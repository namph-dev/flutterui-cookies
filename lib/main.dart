import 'package:flutter/material.dart';
import 'package:fluttercookie/list_%20growth.dart';
import 'package:fluttercookie/list_%20sleep.dart';
import 'package:fluttercookie/list_%20wellness.dart';
import 'package:fluttercookie/story_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20.0),
                  alignment: AlignmentDirectional.centerStart,
                  child: const Text('Self Assessments',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 30),
                  alignment: AlignmentDirectional.centerStart,
                  child: const Text('Understand your health better',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFFFBFAF9),
              ),
              child: Column(
                children: [
                  Container(
                    height: 240,
                    child: ListStory(),
                  ),
                  ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 300),
                      child: ListWellness(
                        title: 'Wellness Assessments',
                        name: 'Depression',
                        img: 'assets/cookiemint.jpg',
                        question: '5 questions',
                        time: '3 minutes',
                      )),
                  ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 300),
                      child: ListWellness(
                        title: 'Wellness Assessments',
                        name: 'Depressionaaa',
                        img: 'assets/cookiemint.jpg',
                        question: '5 questions',
                        time: '3 minutes',
                      )),
                  ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 300),
                      child: ListWellness(
                        title: 'Wellness Assessments',
                        name: 'Depressionssss',
                        img: 'assets/cookiemint.jpg',
                        question: '5 questions',
                        time: '3 minutes',
                      )),
                  ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 300),
                      child: ListWellness(
                        title: 'Wellness Assessments',
                        name: 'Depressionđx',
                        img: 'assets/cookiemint.jpg',
                        question: '5 questions',
                        time: '3 minutes',
                      )),
                ],
              ),
            )
          ],
        )));
    return scaffold;
  }
}
