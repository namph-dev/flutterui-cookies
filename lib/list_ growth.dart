import 'package:flutter/material.dart';

class ListGrowth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Column(
          children: [
            Container(
              child: _buildTitle("Test 2", context),
            ),
            SizedBox(height: 24.0),
            Container(
                padding: EdgeInsets.only(right: 15.0),
                width: MediaQuery.of(context).size.width - 30.0,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  primary: false,
                  shrinkWrap: true,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  childAspectRatio: 0.8,
                  children: <Widget>[
                    _buildCard('General Wellbeing', '5 questions', '3 minutes',
                        'assets/cookiemint.jpg', context),
                    _buildCard('General Wellbeing', '5 questions', '3 minutes',
                        'assets/cookiemint.jpg', context),
                    _buildCard('General Wellbeing', '5 questions', '3 minutes',
                        'assets/cookiemint.jpg', context),
                    _buildCard('General Wellbeing', '5 questions', '3 minutes',
                        'assets/cookiemint.jpg', context),
                    _buildCard('General Wellbeing', '5 questions', '3 minutes',
                        'assets/cookiemint.jpg', context),
                    _buildCard('General Wellbeing', '5 questions', '3 minutes',
                        'assets/cookiemint.jpg', context),
                    _buildCard('General Wellbeing', '5 questions', '3 minutes',
                        'assets/cookiemint.jpg', context),
                    _buildCard('General Wellbeing', '5 questions', '3 minutes',
                        'assets/cookiemint.jpg', context),
                  ],
                )),
          ],
        ),
      ],
    );
  }

  Widget _buildCard(
      String name, String question, String time, String imgPath, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: null,
            child: Container(
                width: 150,
                height: 148,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2.0,
                          blurRadius: 2.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  Container(
                    child: Hero(
                        tag: imgPath,
                        child: Container(
                            height: 150.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.contain)))),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          child: Text(name,
                              style: TextStyle(
                                  color: Color(0xFF575E67),
                                  fontFamily: 'Varela',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 15, top: 5),
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
                      ],
                    ),
                  ),
                ]))));
  }
}

Widget _buildTitle(String title, context) {
  return Padding(
    padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: Container(
      padding: const EdgeInsets.only(left: 20.0),
      alignment: AlignmentDirectional.centerStart,
      child: Text(title,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: 'Merriweather',
              fontSize: 20,
              fontWeight: FontWeight.bold)),
    ),
  );
}
