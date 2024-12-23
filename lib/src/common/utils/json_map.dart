// class JsonMap implements Map<String, dynamic> {
//   final String _filePath;
//   final String _mapPath;
//   final Map<String, dynamic> _map;
//
//   JsonMap({
//     required String filePath,
//     required String mapPath,
//     required Map<String, dynamic> map,
//   })  : _filePath = filePath,
//         _mapPath = mapPath,
//         _map = map;
//
//   @override
//   dynamic operator [](Object? key) {
//     final value = _map[key];
//     if (value is Map<String, dynamic>) {
//       return JsonMap(
//         filePath: _filePath,
//         mapPath: '$_mapPath/$key',
//         map: value,
//       );
//     }
//     if (value is List) {
//       int index = 0;
//       return value.map((e) {
//         if (e is Map<String, dynamic>) {
//           return JsonMap(
//             filePath: _filePath,
//             mapPath: '$_mapPath/$key[${index++}]',
//             map: e,
//           );
//         }
//         return e;
//       }).toList();
//     }
//     return JsonValue(value);
//   }
//
//   @override
//   bool get isEmpty => _map.isEmpty;
//
//   @override
//   bool get isNotEmpty => _map.isNotEmpty;
//
//   @override
//   Iterable<String> get keys => _map.keys;
//
//   @override
//   Iterable get values => throw UnimplementedError('values');
//
//   @override
//   int get length => _map.length;
//
//   @override
//   bool containsKey(Object? key) => _map.containsKey(key);
//
//   @override
//   void operator []=(String key, dynamic value) {
//     throw UnimplementedError('[]=');
//   }
//
//   @override
//   void addAll(Map<String, dynamic> other) {
//     throw UnimplementedError('addAll');
//   }
//
//   @override
//   void addEntries(Iterable<MapEntry<String, dynamic>> newEntries) {
//     throw UnimplementedError('addEntries');
//   }
//
//   @override
//   Map<RK, RV> cast<RK, RV>() {
//     throw UnimplementedError('cast');
//   }
//
//   @override
//   void clear() {
//     throw UnimplementedError('clear');
//   }
//
//   @override
//   bool containsValue(Object? value) {
//     throw UnimplementedError();
//   }
//
//   @override
//   Iterable<MapEntry<String, dynamic>> get entries =>
//       throw UnimplementedError('entries');
//
//   @override
//   void forEach(void Function(String key, dynamic value) action) {
//     throw UnimplementedError('forEach');
//   }
//
//   @override
//   Map<K2, V2> map<K2, V2>(
//     MapEntry<K2, V2> Function(String key, dynamic value) convert,
//   ) {
//     throw UnimplementedError('map');
//   }
//
//   @override
//   dynamic putIfAbsent(String key, Function() ifAbsent) {
//     throw UnimplementedError('putIfAbsent');
//   }
//
//   @override
//   dynamic remove(Object? key) {
//     throw UnimplementedError('remove');
//   }
//
//   @override
//   void removeWhere(bool Function(String key, dynamic value) test) {
//     throw UnimplementedError('removeWhere');
//   }
//
//   @override
//   dynamic update(
//     String key,
//     Function(dynamic value) update, {
//     Function()? ifAbsent,
//   }) {
//     throw UnimplementedError('update');
//   }
//
//   @override
//   void updateAll(Function(String key, dynamic value) update) {
//     throw UnimplementedError('updateAll');
//   }
// }
//
//
// class JsonValue {
//   final dynamic _value;
//
//   @override
//   R operator as<R>(Type other) {
//     print('object as');
//     return _value as R;
//   }
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is JsonValue &&
//           runtimeType == other.runtimeType &&
//           _value == other._value;
//
//
//   JsonValue(this._value);
//
//
//
//   T? tryCast<T>(dynamic value, {T? fallback}) {
//     print('object as');
//     try {
//       return (value as T);
//     } on TypeError catch (_) {
//       return fallback;
//     }
//   }
//
//   // X as<X>() {
//   //   print('object as');
//   //   return this as X;
//   // }
//
//   R cast<R>() {
//     print('object cast');
//     return _value as R;
//   }
// }