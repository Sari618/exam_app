
import 'package:flutter/material.dart';

void main() {
  runApp(const ExamApp());
}

List<Widget> answerResult = [];
 List<String> qustions = [
  'هل عدد الكواكب في المجموعه الشمسيه 8؟',
  'القطط هي حيونات لاحمة',
  'هل الصين موجوده في قاره افريقيا ',
  ' هل الأرض مسطحه ؟',
];
List<String> questionImage = [
  'images/image-1.jpg',
  'images/image-2.jpg',
  'images/image-3.jpg',
  'images/image-4.jpg'
];
List<bool> answers = [true, true, false, false];
// List<Question> questionGroup = [
//   Question(
//       q: 'هل عدد الكواكب في المجموعه الشمسيه 8؟',
//       i: 'images/image-1.jpg',
//       a: true),
//   Question(q: 'القطط هي حيونات لاحمة',
//    i: 'images/image-2.jpg',
//     a: false),
//       Question(
//   q: 'هل الصين موجوده في قاره افريقيا ',
//         i: 'images/image-3.jpg',
//       a: false),
//   Question(q: ' هل الأرض مسطحه ؟',
//    i: 'images/image-4.jpg',
//     a: false)
// ]; 
// Question question1 = Question(
//     q: 'هل عدد الكواكب في المجموعه الشمسيه 8؟',
//     i: 'images/image-1.jpg',
//     a: true);
int qustionsNumber = 0;

class ExamApp extends StatelessWidget {
  const ExamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('اختبار'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ExamPage(),
        ),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  const ExamPage({Key? key}) : super(key: key);

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: answerResult),
        Expanded(
            flex: 5,
            child: Column(
              children: [
                Image.asset(questionImage[qustionsNumber]),
                SizedBox(height: 100.0, width: 100.0),
                Text(qustions[qustionsNumber]),
              ],
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20.0),
                  backgroundColor: Colors.green),
              onPressed: () {
                bool correctAnswer = answers[qustionsNumber];
                if (correctAnswer == true) {
                  print('اجابه صحيحه');
                } else {
                  print('اجابه خطاء');
                }
                setState(() {
                  qustionsNumber++;
                });
              },
              child: const Text('صح'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20.0),
                  backgroundColor: Colors.red),
              onPressed: () {
                bool correctAnswer = answers[qustionsNumber];
                if (correctAnswer == false) {
                  print('اجابه صحيحه');
                } else {
                  print('اجابه خطاء');
                }

                setState(() {
                  qustionsNumber++;
                });
              },
              child: const Text('خطاء'),
            ),
          ),
        )
      ],
    );
  }
}
