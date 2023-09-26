import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  const QuizCard(
      {super.key,
      required this.quiz,
      required this.onCorrect,
      required this.onIncorrect});
  final Map<String, dynamic> quiz;
  final Function onCorrect;
  final Function onIncorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 120, top: 60, left: 16, right: 16),
      height: 500,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                quiz['question'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                itemCount: quiz['options'].length,
                shrinkWrap: true,
                itemBuilder: (context, index) => ElevatedButton(
                  child: Column(
                    children: [
                      Text(quiz['options'][index]),
                    ].toList(),
                  ),
                  onPressed: () {
                    if (quiz['answer'] == index + 1)
                      onCorrect();
                    else
                      onIncorrect();
                  },
                ),
              ),
            ].toList()),
      ),
    );
  }
}
