import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  int result;
  int maximuns;

  ScoreScreen({Key key, @required this.result, @required this.maximuns})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        title: (Image(
          height: 30,
          width: 400,
          image: AssetImage(
            'lib/assets/simbolo.png',
          ),
        )),
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              SizedBox(
                height: 113,
              ),
              Text(
                'Você acertou: ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '$result',
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w800,
                        color: Colors.pink),
                  ),
                  Text(
                    '/ $maximuns',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff263238)),
                  ),
                ],
              )
            ],
          )),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.35),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1),
                ),
              ],
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text(
                  'Jogar novamente',
                  style: TextStyle(fontSize: 15),
                ),
                color: Color(0xffDA0175),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
