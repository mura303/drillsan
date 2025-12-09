import 'package:flutter/material.dart';

class NumPad extends StatelessWidget {
  final Function(String) onNumberPressed;
  final VoidCallback onClear;
  final VoidCallback onSubmit;
  final Color? buttonColor;
  final Color? textColor;

  const NumPad({
    super.key,
    required this.onNumberPressed,
    required this.onClear,
    required this.onSubmit,
    this.buttonColor,
    this.textColor,
  });

  Widget _buildButton(String text, VoidCallback onPressed, {bool isSpecial = false}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: isSpecial 
                ? Colors.orange 
                : (buttonColor ?? Colors.blue),
            foregroundColor: textColor ?? Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              _buildButton('7', () => onNumberPressed('7')),
              _buildButton('8', () => onNumberPressed('8')),
              _buildButton('9', () => onNumberPressed('9')),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              _buildButton('4', () => onNumberPressed('4')),
              _buildButton('5', () => onNumberPressed('5')),
              _buildButton('6', () => onNumberPressed('6')),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              _buildButton('1', () => onNumberPressed('1')),
              _buildButton('2', () => onNumberPressed('2')),
              _buildButton('3', () => onNumberPressed('3')),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              _buildButton('C', onClear, isSpecial: true),
              _buildButton('0', () => onNumberPressed('0')),
              _buildButton('OK', onSubmit, isSpecial: true),
            ],
          ),
        ),
      ],
    );
  }
}
