import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestures Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,title}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final Map<String, bool> score = {};
  final Map choices = {
    '🍈': Colors.lightGreen,
    '🍒': Colors.red,
    '🍊': Colors.green,
    '🍋': Colors.lime,
    '🍌': Colors.yellow,
    '🍇': Colors.purple,
  };
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Score ${score.length} /6'),
          backgroundColor: Colors.lightGreen),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ), // FloatingActionBUtton
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: choices.keys.map((emoji) {
                return Draggable<String>(
                  data: emoji,
                  child: Emoji(emoji: score[emoji] == true ? '✔️' : emoji),
                  feedback: Emoji(emoji: emoji),
                  childWhenDragging: Emoji(emoji: '🌱'),
                );
              }).toList()),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
              ..shuffle(Random(seed)),
          )
        ],
      ),
    );
  }

  Widget _buildDragTarget(emoji) {
    return DragTarget <String>(
      builder: (BuildContext context, List<dynamic> incoming,
          List <dynamic> rejected) {
        if (score[emoji] == true) {
          return Container(
            color: Colors.white10,
            child: Text('Correct'),
            alignment: Alignment.center,
            height: 60,
            width: 150,
          );
        } else {
          return Container(color: choices[emoji], height: 60, width: 150);
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
        });
      },
      onLeave: (data) {},
    );
  }
}
class Emoji extends StatelessWidget {
  Emoji({Key? key, required this.emoji}) : super(key: key);
  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 78,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      )
    );
  }
}