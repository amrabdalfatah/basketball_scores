import 'package:flutter/material.dart';

class TeamStandard extends StatefulWidget {
  String team;
  int score;
  TeamStandard({
    required this.team,
    required this.score,
    Key? key,
  }) : super(key: key);

  @override
  _TeamStandardState createState() => _TeamStandardState();
}

class _TeamStandardState extends State<TeamStandard> {
  // This method to increase counter with any value
  Widget _buildButton(String text) {
    return MaterialButton(
      minWidth: double.infinity,
      color: Colors.blue,
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.team,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              '${widget.score}',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        _buildButton('+1 POINT'),
        _buildButton('+2 POINT'),
        _buildButton('+3 POINT'),
      ],
    );
  }
}
