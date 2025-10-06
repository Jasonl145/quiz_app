import 'package:flutter/material.dart';


class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary({super.key, required this.summaryData});
  
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data){
          return Row(
            
            children: [
              
              Text(
                ((data['question_index']as int) + 1).toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )
              ),
              Expanded(
                
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                          color: Colors.lightBlue, 
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],

          );
        }
      ).toList(),
    );
  }
}