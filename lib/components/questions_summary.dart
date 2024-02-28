import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {Key? key}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((item) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: item['answer'].toString() ==
                            item['user_answer'].toString()
                        ? Colors.green
                        : Colors.red,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 11, horizontal: 15),
                    child: Text(
                      ((item['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Question - ${item['question']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Answer - ${item['answer']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Your Answer - ${item['user_answer']}',
                      style: TextStyle(
                        color: item['answer'].toString() ==
                                item['user_answer'].toString()
                            ? Colors.green
                            : Colors.red,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ))
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
