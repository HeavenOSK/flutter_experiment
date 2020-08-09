class ExhaustiveClass {
  final String name;

  const ExhaustiveClass._(this.name);

  static const success = ExhaustiveClass._('success');
  static const failed = ExhaustiveClass._('failed');
}

void main() async {
  final result = ExhaustiveClass.success;

  switch (result) {
    case ExhaustiveClass.success:
      print('success');
      break;
    case ExhaustiveClass.failed:
      print('failed');
      break;
  }
}
