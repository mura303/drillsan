import 'package:flutter/material.dart';
import 'dart:math';
import '../models/math_problem.dart';
import 'layout_1_to_5.dart';
import 'layout_6_to_10.dart';

class LayoutSelectorScreen extends StatelessWidget {
  const LayoutSelectorScreen({super.key});

  MathProblem _generateRandomProblem() {
    final random = Random();
    final operations = Operation.values;
    final operation = operations[random.nextInt(operations.length)];
    
    int operand1, operand2;
    
    switch (operation) {
      case Operation.addition:
        operand1 = random.nextInt(50) + 1;
        operand2 = random.nextInt(50) + 1;
        break;
      case Operation.subtraction:
        operand1 = random.nextInt(50) + 20;
        operand2 = random.nextInt(operand1);
        break;
      case Operation.multiplication:
        operand1 = random.nextInt(12) + 1;
        operand2 = random.nextInt(12) + 1;
        break;
      case Operation.division:
        operand2 = random.nextInt(10) + 1;
        operand1 = operand2 * (random.nextInt(10) + 1);
        break;
    }
    
    return MathProblem(
      operand1: operand1,
      operand2: operand2,
      operation: operation,
    );
  }

  Widget _buildLayoutCard(BuildContext context, {
    required String title,
    required String description,
    required Color color,
    required Widget Function() layoutBuilder,
  }) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => layoutBuilder()),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [color.withOpacity(0.7), color],
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    title.split(' ')[0],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('算数ドリル - レイアウト選択'),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple.shade100, Colors.white],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'レイアウトを選択してください',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '10種類の異なるデザインから選べます',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            _buildLayoutCard(
              context,
              title: 'Layout 1: Classic Centered',
              description: 'シンプルな中央配置レイアウト',
              color: Colors.blue,
              layoutBuilder: () => Layout1ClassicCentered(problem: _generateRandomProblem()),
            ),
            _buildLayoutCard(
              context,
              title: 'Layout 2: Split Horizontal',
              description: '左右分割デザイン',
              color: Colors.green,
              layoutBuilder: () => Layout2SplitHorizontal(problem: _generateRandomProblem()),
            ),
            _buildLayoutCard(
              context,
              title: 'Layout 3: Large Header',
              description: '大きな文字のヘッダー',
              color: Colors.purple,
              layoutBuilder: () => Layout3LargeHeader(problem: _generateRandomProblem()),
            ),
            _buildLayoutCard(
              context,
              title: 'Layout 4: Split Vertical 50-50',
              description: '上下均等分割デザイン',
              color: Colors.orange,
              layoutBuilder: () => Layout4SplitVertical(problem: _generateRandomProblem()),
            ),
            _buildLayoutCard(
              context,
              title: 'Layout 5: With Progress Bar',
              description: '進捗バー付きレイアウト',
              color: Colors.teal,
              layoutBuilder: () => Layout5WithProgress(problem: _generateRandomProblem()),
            ),
            _buildLayoutCard(
              context,
              title: 'Layout 6: Colorful Theme',
              description: 'カラフルなテーマデザイン',
              color: Colors.pink,
              layoutBuilder: () => Layout6ColorfulTheme(problem: _generateRandomProblem()),
            ),
            _buildLayoutCard(
              context,
              title: 'Layout 7: Card Style',
              description: 'カードスタイルのデザイン',
              color: Colors.blue,
              layoutBuilder: () => Layout7CardStyle(problem: _generateRandomProblem()),
            ),
            _buildLayoutCard(
              context,
              title: 'Layout 8: Minimal Design',
              description: 'ミニマルデザイン',
              color: Colors.grey,
              layoutBuilder: () => Layout8Minimal(problem: _generateRandomProblem()),
            ),
            _buildLayoutCard(
              context,
              title: 'Layout 9: Tablet Wide',
              description: 'タブレット最適化レイアウト',
              color: Colors.indigo,
              layoutBuilder: () => Layout9TabletWide(problem: _generateRandomProblem()),
            ),
            _buildLayoutCard(
              context,
              title: 'Layout 10: Phone Compact',
              description: 'スマホ最適化コンパクトレイアウト',
              color: Colors.deepOrange,
              layoutBuilder: () => Layout10PhoneCompact(problem: _generateRandomProblem()),
            ),
          ],
        ),
      ),
    );
  }
}
