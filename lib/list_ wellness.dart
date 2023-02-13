import 'package:flutter/material.dart';
import 'package:fluttercookie/detail-page.dart';

class ListWellness extends StatelessWidget {
  final String title;
  final String name;
  final String time;
  final String question;
  final String img;

  const ListWellness(
      {Key key, this.title, this.name, this.time, this.question, this.img})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              child: _buildTitle(title, context),
            ),
            SizedBox(height: 24.0),
            Container(
                width: MediaQuery.of(context).size.width - 30.0,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: 12.0,
                  children: <Widget>[
                    _buildCard(name, question, time, img, context),
                    _buildCard(name, question, time, img, context),
                    _buildCard(name, question, time, img, context),
                    _buildCard(name, question, time, img, context),
                  ],
                )),
          ],
        );
      },
    );
  }

  Widget _buildCard(
      String name, String question, String time, String imgPath, context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PagesDetail(
                        assetPath: imgPath,
                        time: time,
                        title: name,
                        question: question,
                      )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 4,
                          blurRadius: 20)
                    ],
                    color: Color(0xFFFFFBEF)),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  Container(
                    child: Hero(
                        tag: imgPath,
                        child: Container(
                            height: 120,
                            width: 110,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.contain)))),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15, top: 8),
                            alignment: AlignmentDirectional.centerStart,
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
                  ),
                ]))));
  }
}

Widget _buildTitle(String title, context) {
  return Container(
    padding: const EdgeInsets.only(left: 20.0),
    alignment: AlignmentDirectional.centerStart,
    child: Text(title,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Merriweather',
            fontSize: 20,
            fontWeight: FontWeight.bold)),
  );
}
