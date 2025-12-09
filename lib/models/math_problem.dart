enum Operation {
  addition,
  subtraction,
  multiplication,
  division,
}

class MathProblem {
  final int operand1;
  final int operand2;
  final Operation operation;
  final int correctAnswer;

  MathProblem({
    required this.operand1,
    required this.operand2,
    required this.operation,
  }) : correctAnswer = _calculateAnswer(operand1, operand2, operation);

  static int _calculateAnswer(int a, int b, Operation op) {
    switch (op) {
      case Operation.addition:
        return a + b;
      case Operation.subtraction:
        return a - b;
      case Operation.multiplication:
        return a * b;
      case Operation.division:
        return a ~/ b; // Integer division
    }
  }

  String get operatorSymbol {
    switch (operation) {
      case Operation.addition:
        return '+';
      case Operation.subtraction:
        return '−';
      case Operation.multiplication:
        return '×';
      case Operation.division:
        return '÷';
    }
  }

  String get problemText {
    return '$operand1 $operatorSymbol $operand2 = ?';
  }
}
