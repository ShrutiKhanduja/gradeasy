import 'package:flutter/material.dart';
import 'package:gradeasy/Tetris/gameScreen.dart';
import 'package:provider/provider.dart';




class ScoreBar extends StatefulWidget {
  const ScoreBar({Key? key}) : super(key: key);

  @override
  State<ScoreBar> createState() => _ScoreBarState();
}

class _ScoreBarState extends State<ScoreBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo,Colors.indigoAccent],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Score: ${Provider.of<Data>(context).score}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
