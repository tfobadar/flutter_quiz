import 'package:advance_basic/components/description_text.dart';
import 'package:advance_basic/components/heading2_text.dart';
import 'package:advance_basic/data/questions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({Key? key, required this.answers}) : super(key: key);

  List<String>? answers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < answers!.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'answer': questions[i].answers[0],
        'user_answer': answers![i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    print(answers?.length);
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Heading2Text(
              title: 'You have given x answers on y questions',
              textAlignment: TextAlign.center),
          const SizedBox(
            height: 20,
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...getSummaryData().map(
                (item) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(((item['question_index'] as int)+ 1 ).toString(), style: const TextStyle(color: Colors.white, fontSize: 20,),),
                      const SizedBox(width: 10,),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Question - ${item['question']}', style: const TextStyle(color: Colors.white, fontSize: 16,),),
                          const SizedBox(height: 5,),
                          Text('Answer - ${item['answer']}', style: const TextStyle(color: Colors.white, fontSize: 16,),),
                          const SizedBox(height: 5,),
                          Text('Your Answer - ${item['user_answer']}', style: const TextStyle(color: Colors.white, fontSize: 16,),),
                          const SizedBox(height: 15,),
                        ],
                      ))
                    ],
                  );
                },
              ).toList()
            ],
          )),
          // ...answers!.map(
          //   (item) => DescriptionText(
          //     description: item,
          //   ),
          // )
        ],
      ),
    );
  }
}
