import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(
            children: [
              Container(
                width: 40, // Độ rộng của vòng tròn
                height: 40, // Chiều cao của vòng tròn
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue, // Màu nền của vòng tròn
                ),
                alignment: Alignment.center,
                child: Text(
                  (((data['question_index'] as int) + 1).toString()),
                  style: TextStyle(
                    color: Colors.white, // Màu chữ
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(height: 20),
                    Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],
                ),
              ),
            ],
          );
        }).toList()),
      ),
    );
  }
}
