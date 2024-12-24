import 'package:freezed_annotation/freezed_annotation.dart';

/// A wrapper around a JSON map that provides enhanced error handling
/// by tracking the path to the location where an exception occurred.
/// This allows for more informative error messages, indicating the exact
/// location within the JSON structure where the error happened.
///
/// For example:
/// Error: type 'Null' is not a subtype of type 'String' in type cast
/// - at ./resources/string[0].name,
/// - in file test/sources/strings_a_de.xml
class JsonMap implements Map<String, dynamic> {
  static const String root = '.';

  final JsonMapRootData _rootData;
  final Map<String, dynamic> _map;
  final String _mapPath;

  factory JsonMap({
    required String source,
    required Map<String, dynamic> map,
  }) {
    return JsonMap.internal(
      rootData: JsonMapRootData(
        source: source,
        lastAskedPath: root,
      ),
      map: map,
      mapPath: root,
    );
  }

  @visibleForTesting
  JsonMap.internal({
    required JsonMapRootData rootData,
    required Map<String, dynamic> map,
    required String mapPath,
  })  : _rootData = rootData,
        _mapPath = mapPath,
        _map = map;

  @override
  dynamic operator [](Object? key) {
    final value = _map[key];
    if (value is Map<String, dynamic>) {
      _rootData.lastAskedPath = _mapPath.andKey(key);
      return JsonMap.internal(
        rootData: _rootData,
        mapPath: _mapPath.andKey(key),
        map: value,
      );
    }
    if (value is List) {
      _rootData.lastAskedPath = _mapPath.andIndexedKey(key);
      int index = 0;
      return value.map((iMap) {
        if (iMap is Map<String, dynamic>) {
          return JsonMap.internal(
            rootData: _rootData,
            mapPath: _mapPath.andIndexedKey(key, index++),
            map: iMap,
          );
        }
        return iMap;
      }).toList();
    }
    _rootData.lastAskedPath = _mapPath.andValue(key);
    return value;
  }

  @override
  bool get isEmpty => _map.isEmpty;

  @override
  bool get isNotEmpty => _map.isNotEmpty;

  @override
  Iterable<String> get keys => _map.keys;

  @override
  int get length => _map.length;

  @override
  bool containsKey(Object? key) => _map.containsKey(key);

  T parseTo<T>(T Function(Map<String, dynamic>) parser) {
    try {
      final T result = parser(this);
      return result;
    } on Object catch (error) {
      if (error is JsonMapException) {
        rethrow;
      }
      throw JsonMapException(error, _rootData);
    }
  }

  // ------------------------------------------------------------
  // ---   Unimplemented methods   ------------------------------
  // ------------------------------------------------------------
  // The methods below are not expected to be called during JSON parsing.

  @override
  Iterable get values => throw UnimplementedError('values');

  @override
  void operator []=(String key, dynamic value) {
    throw UnimplementedError('[]=');
  }

  @override
  void addAll(Map<String, dynamic> other) {
    throw UnimplementedError('addAll');
  }

  @override
  void addEntries(Iterable<MapEntry<String, dynamic>> newEntries) {
    throw UnimplementedError('addEntries');
  }

  @override
  Map<RK, RV> cast<RK, RV>() {
    throw UnimplementedError('cast');
  }

  @override
  void clear() {
    throw UnimplementedError('clear');
  }

  @override
  bool containsValue(Object? value) {
    throw UnimplementedError('containsValue');
  }

  @override
  Iterable<MapEntry<String, dynamic>> get entries =>
      throw UnimplementedError('entries');

  @override
  void forEach(void Function(String key, dynamic value) action) {
    throw UnimplementedError('forEach');
  }

  @override
  Map<K2, V2> map<K2, V2>(
    MapEntry<K2, V2> Function(String key, dynamic value) convert,
  ) {
    throw UnimplementedError('map');
  }

  @override
  dynamic putIfAbsent(String key, Function() ifAbsent) {
    throw UnimplementedError('putIfAbsent');
  }

  @override
  dynamic remove(Object? key) {
    throw UnimplementedError('remove');
  }

  @override
  void removeWhere(bool Function(String key, dynamic value) test) {
    throw UnimplementedError('removeWhere');
  }

  @override
  dynamic update(
    String key,
    Function(dynamic value) update, {
    Function()? ifAbsent,
  }) {
    throw UnimplementedError('update');
  }

  @override
  void updateAll(Function(String key, dynamic value) update) {
    throw UnimplementedError('updateAll');
  }
}

class JsonMapRootData {
  final String source;
  String lastAskedPath;

  JsonMapRootData({
    required this.source,
    required this.lastAskedPath,
  });
}

class JsonMapException implements Exception {
  final Object exception;
  final JsonMapRootData data;

  const JsonMapException(this.exception, this.data);

  @override
  String toString() {
    return '$exception at ${data.lastAskedPath}, in ${data.source}';
  }
}

extension on String {
  String andKey(Object? key) => '$this/$key';

  String andIndexedKey(Object? key, [int index = -1]) =>
      '$this/$key[${index < 0 ? '' : '$index'}]';

  String andValue(Object? key) => '$this.$key';
}
