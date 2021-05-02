import 'package:flutter/material.dart';

import './newwaterlevel.dart';

double currentSliderValue = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Level Tracker',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Water Level App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Text('Select Water Level',
              style: TextStyle(color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,)
            ),

            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackShape: RoundedRectSliderTrackShape(),
                trackHeight: 30,

                thumbColor: Colors.deepPurple,
              ),
              child:  Slider(
                min: 0,
                max: 100,
                divisions: 100,
                value: currentSliderValue,
                activeColor: Colors.deepPurpleAccent,
                onChanged: (newValue){
                  setState(() {
                    currentSliderValue = newValue;
                  });
                }
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                child: Text('Water Level: $currentSliderValue\%'),
              ),
            ),

            Container(
              child: RaisedButton(
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  child: Text('Next Page'),
                  onPressed: (){},
              ),
            ),

            Container(
              child: RaisedButton(
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  child: Text('Push to Firestone'),
                  onPressed: () {},
              ),
            ),

          ],
        ),
      ),
    );
  }
}