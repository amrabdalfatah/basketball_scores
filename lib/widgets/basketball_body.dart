import 'package:flutter/material.dart';

import 'team_standard.dart';

class BasketballBody extends StatefulWidget {
  const BasketballBody({Key? key}) : super(key: key);

  @override
  _BasketballBodyState createState() => _BasketballBodyState();
}

class _BasketballBodyState extends State<BasketballBody> {
  int scoreA = 0;
  int scoreB = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: TeamStandard(
                  team: 'TEAM A',
                  score: scoreA,
                )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: TeamStandard(
                  team: 'TEAM B',
                  score: scoreB,
                )),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: MaterialButton(
                color: Colors.grey,
                onPressed: () {
                  setState(() {
                    scoreA = 0;
                    scoreB = 0;
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'RESET',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
