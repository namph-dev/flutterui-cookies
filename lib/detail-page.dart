import 'package:flutter/material.dart';
import 'package:fluttercookie/result.dart';

class PagesDetail extends StatelessWidget {
  final assetPath, time, title, question;

  PagesDetail({this.assetPath, this.time, this.title, this.question});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFBEF),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          padding: EdgeInsets.all(22),
          icon: Icon(Icons.close, color: Color(0xFF2E2800)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Color(0xFFFFFBEF),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Container(
            child: ListView(children: [
              SizedBox(height: 15.0),
              Hero(
                  tag: assetPath,
                  child: Image.asset(assetPath,
                      height: 260.0, width: 260.0, fit: BoxFit.contain)),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 36, bottom: 36.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 20)
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/question.png"),
                        Container(
                            padding: const EdgeInsets.only(left: 4, right: 10),
                            child: Text(question,
                                style: TextStyle(
                                    color: Color(0xFF797979),
                                    fontFamily: 'Varela',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400))),
                        Image.asset(
                          "assets/time.png",
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 4, right: 10),
                            child: Text(time,
                                style: TextStyle(
                                    color: Color(0xFF797979),
                                    fontFamily: 'Varela',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400)))
                      ],
                    ),
                    SizedBox(height: 12.5),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(title,
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF252D3B))),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: MediaQuery.of(context).size.width - 50.0,
                      child: Text(
                          'How confident do you feel about your abilities?  Let is understand what might be going on.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 16.0,
                              color: Color(0xFF797979))),
                    ),
                    SizedBox(height: 24.0),
                    Container(
                      width: MediaQuery.of(context).size.width - 50.0,
                      child: Text(
                          'How confident do you feel about your abilities?  Let is understand what might be going onHow confident do you feel about your abilities?  Let is understand what might be going on.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 16.0,
                              color: Color(0xFF252D3B))),
                    ),
                    SizedBox(height: 24.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ResultPage()));
                      },
                      child: Center(
                          child: Container(
                              width: MediaQuery.of(context).size.width - 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Color(0xFF2E2800)),
                              child: Center(
                                  child: Text(
                                'Begin Assessment',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )))),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
