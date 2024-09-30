import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizeApp(),
    );
  }
}

class QuizeApp extends StatefulWidget {
  const QuizeApp({super.key});

  @override
  State createState() => _QuizeAppState();
}

class _QuizeAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Who is founder of MicroSoft?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 1
    },
    {
      "question": "Who is founder of Apple?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 0
    },
    {
      "question": "Who is founder of SpaceX?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 3
    },
    {
      "question": "Who is founder of Google?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 2
    },
    {
      "question": "Who is founder of Meta?",
      "options": ["Steve Jobs", "Mark Zukya", "Larry Page", "Elon Musk"],
      "correctAnswer": 1
    },
  ];

  WidgetStateProperty<Color?> checkButton(int index) {
    if (selectedAnswer != -1) {
      if (index == allQuestions[currentQuestionIndex]['correctAnswer']) {
        if (selectedAnswer == index) {
          count++;
        }
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswer == index) {
        return const WidgetStatePropertyAll(Colors.red);
      }
    }
    return const WidgetStatePropertyAll(null);
  }

  int currentQuestionIndex = 0;
  int selectedAnswer = -1;
  int count = 0;
  bool questionPage = true;

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.grey,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                ),
                Text(
                  'Questions: ${currentQuestionIndex + 1}/${allQuestions.length}',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 50,
              child: Text(
                allQuestions[currentQuestionIndex]['question'],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkButton(0)),
                onPressed: () {
                  if (selectedAnswer == -1) {
                    selectedAnswer = 0;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][0],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkButton(1)),
                onPressed: () {
                  if (selectedAnswer == -1) {
                    selectedAnswer = 1;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][1],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkButton(2)),
                onPressed: () {
                  if (selectedAnswer == -1) {
                    selectedAnswer = 2;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][2],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkButton(3)),
                onPressed: () {
                  if (selectedAnswer == -1) {
                    selectedAnswer = 3;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][3],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswer != -1) {
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
              } else {
                questionPage = false;
              }
            }
            selectedAnswer = -1;
            setState(() {});
          },
          backgroundColor: Colors.amberAccent,
          child: const Icon(
            Icons.forward,
            color: Colors.blue,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz End",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.network(
                      "https://th.bing.com/th/id/OIP.tjBUlWnsFdubvyZI8N6JAQHaIf?w=195&h=220&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                      height: 10,
                      fit: BoxFit.fill),
                ),
                Text(
                  "Score : $count/${allQuestions.length}",
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.orangeAccent)),
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 42, 34, 11),
                    ),
                  ),
                  onPressed: () {
                    count = 0;
                    currentQuestionIndex = 0;
                    questionPage = true;
                    isQuestionScreen();
                    setState(() {});
                  },
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
