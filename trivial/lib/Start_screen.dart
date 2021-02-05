import 'package:flutter/material.dart';
import 'second.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 169.0),
          Image(height: 90, image: AssetImage('lib/assets/logo.png')), //image
          SizedBox(height: 24.0),
          Text('Trivia \n Academy',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800)),
          SizedBox(
            height: 88.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Second()),
              );
            },
            child: Text('Começar',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                )),
            color: Color(0xffDA0175),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
          ),
        ],
      ),
    );
  }
}
