/// A wrapper around a JSON map that provides enhanced error handling
/// by tracking the path to the location where an exception occurred.
/// This allows for more informative error messages, indicating the exact
/// location within the JSON structure where the error happened.
///
/// For example:
/// Error: type 'Null' is not a subtype of type 'String' in type cast
/// - at ./resources/string[0].name
class JsonMap implements Map<String, dynamic> {
  final String _filePath;
  final String _mapPath;
  final Map<String, dynamic> _map;
  final JsonMap? _parent;
  late String _lastAskedPath = _mapPath;

  JsonMap({
    required String filePath,
    required Map<String, dynamic> map,
    String mapPath = '.',
    JsonMap? parent,
  })  : _filePath = filePath,
        _mapPath = mapPath,
        _map = map,
        _parent = parent;

  void _setLastAskedPath(String path) {
    if (_parent != null) {
      _parent._setLastAskedPath(path);
    }
    _lastAskedPath = path;
  }

  @override
  dynamic operator [](Object? key) {
    final value = _map[key];
    if (value is Map<String, dynamic>) {
      _setLastAskedPath('$_mapPath/$key');
      return JsonMap(
        filePath: _filePath,
        mapPath: '$_mapPath/$key',
        map: value,
        parent: _parent ?? this,
      );
    }
    if (value is List) {
      _setLastAskedPath('$_mapPath/$key[]');
      int index = 0;
      return value.map((e) {
        if (e is Map<String, dynamic>) {
          return JsonMap(
            filePath: _filePath,
            mapPath: '$_mapPath/$key[${index++}]',
            map: e,
            parent: _parent ?? this,
          );
        }
        return e;
      }).toList();
    }
    _setLastAskedPath('$_mapPath.$key');
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
      throw JsonMapException(error, _lastAskedPath);
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

class JsonMapException implements Exception {
  final Object exception;
  final String path;

  const JsonMapException(this.exception, this.path);

  @override
  String toString() {
    return '$exception at $path';
  }
}
