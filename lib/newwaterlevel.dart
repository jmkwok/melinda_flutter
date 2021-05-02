import 'package:flutter/material.dart';

class NewWaterLevel extends StatelessWidget
{
  final Function redoLevel;

  NewWaterLevel(this.redoLevel);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: RaisedButton(
              color: Colors.deepPurple,
              textColor: Colors.white,
              child: Text('Prev Page'),
              onPressed: redoLevel,
            ),
          ),
        ],
      ),
    );
  }

}