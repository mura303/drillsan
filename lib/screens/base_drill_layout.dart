import 'package:flutter/material.dart';
import '../models/math_problem.dart';
import '../widgets/numpad.dart';

abstract class BaseDrillLayout extends StatefulWidget {
  final MathProblem problem;
  final String layoutName;

  const BaseDrillLayout({
    super.key,
    required this.problem,
    required this.layoutName,
  });
}

abstract class BaseDrillLayoutState<T extends BaseDrillLayout> extends State<T> {
  String userAnswer = '';
  bool? isCorrect;

  void onNumberPressed(String number) {
    setState(() {
      if (userAnswer.length < 6) {
        userAnswer += number;
      }
    });
  }

  void onClear() {
    setState(() {
      userAnswer = '';
      isCorrect = null;
    });
  }

  void onSubmit() {
    if (userAnswer.isEmpty) return;
    
    setState(() {
      final answer = int.tryParse(userAnswer) ?? -1;
      isCorrect = answer == widget.problem.correctAnswer;
    });

    // Show result for 2 seconds, then clear
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          userAnswer = '';
          isCorrect = null;
        });
      }
    });
  }

  Widget buildProblemDisplay({
    TextStyle? problemStyle,
    TextStyle? answerStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
  });

  Widget buildNumPadSection({
    Color? buttonColor,
    Color? textColor,
  });

  @override
  Widget build(BuildContext context);
}
