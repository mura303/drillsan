import 'package:flutter/material.dart';
import '../models/math_problem.dart';
import '../widgets/numpad.dart';
import 'base_drill_layout.dart';

// Layout 6: Colorful Themed Layout with Background
class Layout6ColorfulTheme extends BaseDrillLayout {
  const Layout6ColorfulTheme({super.key, required super.problem})
      : super(layoutName: 'Colorful Theme');

  @override
  State<Layout6ColorfulTheme> createState() => _Layout6ColorfulThemeState();
}

class _Layout6ColorfulThemeState extends BaseDrillLayoutState<Layout6ColorfulTheme> {
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
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.pink.shade300,
            Colors.yellow.shade300,
            Colors.cyan.shade300,
          ],
        ),
      ),
      padding: padding ?? const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 16,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  widget.problem.problemText,
                  style: problemStyle ?? TextStyle(
                    fontSize: 56,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Text(
                  userAnswer.isEmpty ? '___' : userAnswer,
                  style: answerStyle ?? TextStyle(
                    fontSize: 44,
                    color: Colors.cyan.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          if (isCorrect != null) ...[
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                color: isCorrect! ? Colors.green : Colors.red,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isCorrect! ? Icons.star : Icons.refresh,
                    color: Colors.white,
                    size: 32,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    isCorrect! ? 'Perfect!' : 'Try Again!',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget buildNumPadSection({Color? buttonColor, Color? textColor}) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.pink.shade50],
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: NumPad(
        onNumberPressed: onNumberPressed,
        onClear: onClear,
        onSubmit: onSubmit,
        buttonColor: buttonColor ?? Colors.pink,
        textColor: textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.layoutName),
        backgroundColor: Colors.pink,
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

// Layout 7: Card-Style Problem Display with Raised Keypad
class Layout7CardStyle extends BaseDrillLayout {
  const Layout7CardStyle({super.key, required super.problem})
      : super(layoutName: 'Card Style');

  @override
  State<Layout7CardStyle> createState() => _Layout7CardStyleState();
}

class _Layout7CardStyleState extends BaseDrillLayoutState<Layout7CardStyle> {
  @override
  Widget buildProblemDisplay({
    TextStyle? problemStyle,
    TextStyle? answerStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) {
    return Container(
      color: backgroundColor ?? Colors.grey.shade200,
      padding: padding ?? const EdgeInsets.all(24.0),
      child: Center(
        child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Container(
            padding: const EdgeInsets.all(48),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Solve this:',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.problem.problemText,
                  style: problemStyle ?? const TextStyle(
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue.shade200, width: 2),
                  ),
                  child: Text(
                    userAnswer.isEmpty ? 'Type here...' : userAnswer,
                    style: answerStyle ?? const TextStyle(
                      fontSize: 40,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                if (isCorrect != null) ...[
                  const SizedBox(height: 24),
                  Icon(
                    isCorrect! ? Icons.check_circle_outline : Icons.highlight_off,
                    color: isCorrect! ? Colors.green : Colors.red,
                    size: 64,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildNumPadSection({Color? buttonColor, Color? textColor}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: NumPad(
        onNumberPressed: onNumberPressed,
        onClear: onClear,
        onSubmit: onSubmit,
        buttonColor: buttonColor ?? Colors.blue,
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
            flex: 2,
            child: buildProblemDisplay(),
          ),
          buildNumPadSection(),
        ],
      ),
    );
  }
}

// Layout 8: Minimal White Space Design
class Layout8Minimal extends BaseDrillLayout {
  const Layout8Minimal({super.key, required super.problem})
      : super(layoutName: 'Minimal Design');

  @override
  State<Layout8Minimal> createState() => _Layout8MinimalState();
}

class _Layout8MinimalState extends BaseDrillLayoutState<Layout8Minimal> {
  @override
  Widget buildProblemDisplay({
    TextStyle? problemStyle,
    TextStyle? answerStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) {
    return Container(
      color: backgroundColor ?? Colors.white,
      padding: padding ?? const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.problem.problemText,
            style: problemStyle ?? const TextStyle(
              fontSize: 56,
              fontWeight: FontWeight.w300,
              color: Colors.black87,
              letterSpacing: 2,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          Container(
            width: 200,
            height: 2,
            color: Colors.black12,
          ),
          const SizedBox(height: 24),
          Text(
            userAnswer.isEmpty ? '' : userAnswer,
            style: answerStyle ?? const TextStyle(
              fontSize: 48,
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          if (isCorrect != null) ...[
            const SizedBox(height: 32),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCorrect! ? Colors.green.shade50 : Colors.red.shade50,
              ),
              child: Icon(
                isCorrect! ? Icons.done : Icons.close,
                color: isCorrect! ? Colors.green : Colors.red,
                size: 48,
              ),
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget buildNumPadSection({Color? buttonColor, Color? textColor}) {
    return Container(
      color: Colors.grey.shade50,
      padding: const EdgeInsets.all(16.0),
      child: NumPad(
        onNumberPressed: onNumberPressed,
        onClear: onClear,
        onSubmit: onSubmit,
        buttonColor: buttonColor ?? Colors.grey.shade800,
        textColor: textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.layoutName),
        backgroundColor: Colors.black87,
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

// Layout 9: Tablet-Optimized Wide Layout
class Layout9TabletWide extends BaseDrillLayout {
  const Layout9TabletWide({super.key, required super.problem})
      : super(layoutName: 'Tablet Wide');

  @override
  State<Layout9TabletWide> createState() => _Layout9TabletWideState();
}

class _Layout9TabletWideState extends BaseDrillLayoutState<Layout9TabletWide> {
  @override
  Widget buildProblemDisplay({
    TextStyle? problemStyle,
    TextStyle? answerStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) {
    return Container(
      color: backgroundColor ?? Colors.indigo.shade50,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 80, vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Problem',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigo.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.problem.problemText,
                  style: problemStyle ?? const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            width: 2,
            height: 200,
            color: Colors.indigo.shade200,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your Answer',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigo.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  userAnswer.isEmpty ? '?' : userAnswer,
                  style: answerStyle ?? const TextStyle(
                    fontSize: 48,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (isCorrect != null) ...[
                  const SizedBox(height: 16),
                  Icon(
                    isCorrect! ? Icons.verified : Icons.error,
                    color: isCorrect! ? Colors.green : Colors.red,
                    size: 48,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildNumPadSection({Color? buttonColor, Color? textColor}) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        padding: const EdgeInsets.all(16.0),
        child: NumPad(
          onNumberPressed: onNumberPressed,
          onClear: onClear,
          onSubmit: onSubmit,
          buttonColor: buttonColor ?? Colors.indigo,
          textColor: textColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.layoutName),
        backgroundColor: Colors.indigo,
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

// Layout 10: Compact Phone-Optimized Layout
class Layout10PhoneCompact extends BaseDrillLayout {
  const Layout10PhoneCompact({super.key, required super.problem})
      : super(layoutName: 'Phone Compact');

  @override
  State<Layout10PhoneCompact> createState() => _Layout10PhoneCompactState();
}

class _Layout10PhoneCompactState extends BaseDrillLayoutState<Layout10PhoneCompact> {
  @override
  Widget buildProblemDisplay({
    TextStyle? problemStyle,
    TextStyle? answerStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) {
    return Container(
      color: backgroundColor ?? Colors.deepOrange.shade50,
      padding: padding ?? const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  widget.problem.problemText,
                  style: problemStyle ?? const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                const Divider(),
                const SizedBox(height: 12),
                Text(
                  userAnswer.isEmpty ? 'Tap numbers below' : userAnswer,
                  style: answerStyle ?? TextStyle(
                    fontSize: 32,
                    color: Colors.deepOrange.shade700,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          if (isCorrect != null) ...[
            const SizedBox(height: 12),
            Chip(
              avatar: Icon(
                isCorrect! ? Icons.check : Icons.close,
                color: Colors.white,
                size: 20,
              ),
              label: Text(
                isCorrect! ? 'Correct!' : 'Incorrect',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: isCorrect! ? Colors.green : Colors.red,
            ),
          ],
        ],
      ),
    );
  }

  @override
  Widget buildNumPadSection({Color? buttonColor, Color? textColor}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NumPad(
        onNumberPressed: onNumberPressed,
        onClear: onClear,
        onSubmit: onSubmit,
        buttonColor: buttonColor ?? Colors.deepOrange,
        textColor: textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.layoutName),
        backgroundColor: Colors.deepOrange,
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
