import 'dart:io';

extension AppFileExtension on File {
  File toDirectoryCurrentPathRelated() {
    final currentPath = Directory.current.path;
    if (path.startsWith(currentPath)) {
      return this;
    }

    final pathItems = path.split('/');
    final currentPathItems = currentPath.split('/');

    while (pathItems.firstOrNull == '..') {
      pathItems.removeAt(0);
      if (currentPathItems.isEmpty) {
        throw ArgumentError('Path $path is invalid');
      }
      currentPathItems.removeAt(currentPathItems.length - 1);
    }

    return File([...currentPathItems, ...pathItems].join('/'));
  }
}
