import 'package:flutter/material.dart';
import '../models/math_problem.dart';
import '../widgets/numpad.dart';
import 'base_drill_layout.dart';

// Layout 1: Classic Centered Layout
class Layout1ClassicCentered extends BaseDrillLayout {
  const Layout1ClassicCentered({super.key, required super.problem})
      : super(layoutName: 'Classic Centered');

  @override
  State<Layout1ClassicCentered> createState() => _Layout1ClassicCenteredState();
}

class _Layout1ClassicCenteredState extends BaseDrillLayoutState<Layout1ClassicCentered> {
  @override
  Widget buildProblemDisplay({
    TextStyle? problemStyle,
    TextStyle? answerStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) {
    return Container(
      color: backgroundColor ?? Colors.blue.shade50,
      padding: padding ?? const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.problem.problemText,
            style: problemStyle ?? const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Text(
            userAnswer.isEmpty ? '_' : userAnswer,
            style: answerStyle ?? const TextStyle(fontSize: 36, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          if (isCorrect != null) ...[
            const SizedBox(height: 16),
            Icon(
              isCorrect! ? Icons.check_circle : Icons.cancel,
              color: isCorrect! ? Colors.green : Colors.red,
              size: 48,
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget buildNumPadSection({Color? buttonColor, Color? textColor}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: NumPad(
        onNumberPressed: onNumberPressed,
        onClear: onClear,
        onSubmit: onSubmit,
        buttonColor: buttonColor,
        textColor: textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.layoutName),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: buildProblemDisplay(),
          ),
          buildNumPadSection(),
        ],
      ),
    );
  }
}

// Layout 2: Left-Aligned Problem, Right-Aligned Keypad
class Layout2SplitHorizontal extends BaseDrillLayout {
  const Layout2SplitHorizontal({super.key, required super.problem})
      : super(layoutName: 'Split Horizontal');

  @override
  State<Layout2SplitHorizontal> createState() => _Layout2SplitHorizontalState();
}

class _Layout2SplitHorizontalState extends BaseDrillLayoutState<Layout2SplitHorizontal> {
  @override
  Widget buildProblemDisplay({
    TextStyle? problemStyle,
    TextStyle? answerStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) {
    return Container(
      color: backgroundColor ?? Colors.green.shade50,
      padding: padding ?? const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.problem.problemText,
            style: problemStyle ?? const TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          Text(
            'Answer: ${userAnswer.isEmpty ? '_' : userAnswer}',
            style: answerStyle ?? const TextStyle(fontSize: 32, color: Colors.green),
          ),
          if (isCorrect != null) ...[
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(
                  isCorrect! ? Icons.check_circle : Icons.cancel,
                  color: isCorrect! ? Colors.green : Colors.red,
                  size: 36,
                ),
                const SizedBox(width: 8),
                Text(
                  isCorrect! ? 'Correct!' : 'Try again!',
                  style: TextStyle(
                    fontSize: 24,
                    color: isCorrect! ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget buildNumPadSection({Color? buttonColor, Color? textColor}) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.green.shade100,
      child: NumPad(
        onNumberPressed: onNumberPressed,
        onClear: onClear,
        onSubmit: onSubmit,
        buttonColor: buttonColor ?? Colors.green,
        textColor: textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.layoutName),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: buildProblemDisplay(),
          ),
          buildNumPadSection(),
        ],
      ),
    );
  }
}

// Layout 3: Large Font Header with Compact Keypad
class Layout3LargeHeader extends BaseDrillLayout {
  const Layout3LargeHeader({super.key, required super.problem})
      : super(layoutName: 'Large Header');

  @override
  State<Layout3LargeHeader> createState() => _Layout3LargeHeaderState();
}

class _Layout3LargeHeaderState extends BaseDrillLayoutState<Layout3LargeHeader> {
  @override
  Widget buildProblemDisplay({
    TextStyle? problemStyle,
    TextStyle? answerStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.purple.shade400, Colors.purple.shade100],
        ),
      ),
      padding: padding ?? const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.problem.problemText,
            style: problemStyle ?? const TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 3.0,
                  color: Colors.black26,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Text(
              userAnswer.isEmpty ? '?' : userAnswer,
              style: answerStyle ?? const TextStyle(
                fontSize: 48,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          if (isCorrect != null) ...[
            const SizedBox(height: 16),
            Icon(
              isCorrect! ? Icons.check_circle : Icons.cancel,
              color: isCorrect! ? Colors.greenAccent : Colors.redAccent,
              size: 56,
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget buildNumPadSection({Color? buttonColor, Color? textColor}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: NumPad(
        onNumberPressed: onNumberPressed,
        onClear: onClear,
        onSubmit: onSubmit,
        buttonColor: buttonColor ?? Colors.purple,
        textColor: textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.layoutName),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: buildProblemDisplay(),
          ),
          buildNumPadSection(),
        ],
      ),
    );
  }
}

// Layout 4: Split Screen Vertical (50-50)
class Layout4SplitVertical extends BaseDrillLayout {
  const Layout4SplitVertical({super.key, required super.problem})
      : super(layoutName: 'Split Vertical 50-50');

  @override
  State<Layout4SplitVertical> createState() => _Layout4SplitVerticalState();
}

class _Layout4SplitVerticalState extends BaseDrillLayoutState<Layout4SplitVertical> {
  @override
  Widget buildProblemDisplay({
    TextStyle? problemStyle,
    TextStyle? answerStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) {
    return Container(
      color: backgroundColor ?? Colors.orange.shade50,
      padding: padding ?? const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.problem.problemText,
            style: problemStyle ?? const TextStyle(fontSize: 52, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Text(
            userAnswer.isEmpty ? '?' : userAnswer,
            style: answerStyle ?? const TextStyle(fontSize: 40, color: Colors.orange),
            textAlign: TextAlign.center,
          ),
          if (isCorrect != null) ...[
            const SizedBox(height: 16),
            Icon(
              isCorrect! ? Icons.sentiment_very_satisfied : Icons.sentiment_dissatisfied,
              color: isCorrect! ? Colors.green : Colors.red,
              size: 52,
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget buildNumPadSection({Color? buttonColor, Color? textColor}) {
    return Container(
      color: Colors.orange.shade100,
      padding: const EdgeInsets.all(16.0),
      child: NumPad(
        onNumberPressed: onNumberPressed,
        onClear: onClear,
        onSubmit: onSubmit,
        buttonColor: buttonColor ?? Colors.orange,
        textColor: textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.layoutName),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: buildProblemDisplay(),
          ),
          Expanded(
            flex: 1,
            child: buildNumPadSection(),
          ),
        ],
      ),
    );
  }
}

// Layout 5: Problem with Progress Bar
class Layout5WithProgress extends BaseDrillLayout {
  const Layout5WithProgress({super.key, required super.problem})
      : super(layoutName: 'With Progress Bar');

  @override
  State<Layout5WithProgress> createState() => _Layout5WithProgressState();
}

class _Layout5WithProgressState extends BaseDrillLayoutState<Layout5WithProgress> {
  @override
  Widget buildProblemDisplay({
    TextStyle? problemStyle,
    TextStyle? answerStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) {
    return Container(
      color: backgroundColor ?? Colors.teal.shade50,
      padding: padding ?? const EdgeInsets.all(32.0),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: 0.3, // Example progress
            backgroundColor: Colors.teal.shade100,
            color: Colors.teal,
            minHeight: 8,
          ),
          const SizedBox(height: 16),
          Text(
            'Example Problem', // In a real app, this would be dynamic based on problem count
            style: TextStyle(fontSize: 16, color: Colors.teal.shade700),
          ),
          const Spacer(),
          Text(
            widget.problem.problemText,
            style: problemStyle ?? const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal, width: 3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              userAnswer.isEmpty ? 'Type your answer' : userAnswer,
              style: answerStyle ?? const TextStyle(fontSize: 36, color: Colors.teal),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          if (isCorrect != null) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isCorrect! ? Icons.thumb_up : Icons.thumb_down,
                  color: isCorrect! ? Colors.green : Colors.red,
                  size: 42,
                ),
                const SizedBox(width: 12),
                Text(
                  isCorrect! ? 'Great job!' : 'Not quite!',
                  style: TextStyle(
                    fontSize: 24,
                    color: isCorrect! ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget buildNumPadSection({Color? buttonColor, Color? textColor}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: NumPad(
        onNumberPressed: onNumberPressed,
        onClear: onClear,
        onSubmit: onSubmit,
        buttonColor: buttonColor ?? Colors.teal,
        textColor: textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.layoutName),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: buildProblemDisplay(),
          ),
          buildNumPadSection(),
        ],
      ),
    );
  }
}
