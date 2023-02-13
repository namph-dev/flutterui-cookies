import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ListStory extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
            // padding: EdgeInsets.only(right: 15.0),
            padding: EdgeInsets.all(12),
            // margin: EdgeInsets.all(12),
            height: MediaQuery.of(context).size.height - 50.0,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: _buildCard('General Wellbeing', '5 questions',
                      '3 minutes', 'assets/cookiemint.jpg', context),
                )));
      },
      // scrollDirection: Axis.horizontal,
    );
  }
}

Widget _buildCard(
    String name, String question, String time, String imgPath, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: null,
          child: Container(
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ],
                  color: Colors.white),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                Hero(
                    tag: imgPath,
                    child: Container(
                        height: 150.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain)))),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: const EdgeInsets.only(left: 14),
                  child: Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 14, top: 5),
                  child: Row(
                    children: [
                      Image.asset("assets/question.png"),
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(question,
                                style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Varela',
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400))),
                      ),
                      Image.asset("assets/time.png"),
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(time,
                                style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Varela',
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400))),
                      )
                    ],
                  ),
                )
              ]))));
}
