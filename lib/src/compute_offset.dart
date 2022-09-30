double computeOffset<T>({
  required List<double> sizes,
  required List<T?> items,
  T? current,
}) {
  final index = items.indexOf(current);
  if (sizes.length > index) {
    return sizes
        .getRange(0, index)
        .toList()
        .fold<double>(0, (previousValue, element) => previousValue + element);
  } else {
    return 0;
  }
}
