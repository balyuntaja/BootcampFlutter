List<int> rangeWithStep(int num1, int num2, int step) {
  List<int> result = [];
  int current = num1;

  bool isAscending = num1 <= num2;

  while ((isAscending && current <= num2) || (!isAscending && current >= num2)) {
    result.add(current);
    current += isAscending ? step : -step;
  }

  return result;
}

void main() {
  print(rangeWithStep(30, 23, 2));
}