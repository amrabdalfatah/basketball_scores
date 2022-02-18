import 'package:flutter/material.dart';

import 'team_standard.dart';

class BasketballBody extends StatefulWidget {
  const BasketballBody({Key? key}) : super(key: key);

  @override
  _BasketballBodyState createState() => _BasketballBodyState();
}

class _BasketballBodyState extends State<BasketballBody> {
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
                Expanded(child: TeamStandard(team: 'TEAM A', score: 0)),
                const SizedBox(
                  width: 20,
                ),
                Expanded(child: TeamStandard(team: 'TEAM B', score: 0)),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: MaterialButton(
                color: Colors.grey,
                onPressed: () {},
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
