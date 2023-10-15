import 'package:flutter/material.dart';
import 'package:mcs_final1322/Intro/Welcome3.dart';

class WelcomeSecond extends StatelessWidget {
  const WelcomeSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/BG_Welcome2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Spacer(flex: 1), // จัดการพื้นที่ในบริเวณบนของ Column
              Column(
                children: [
                  Text(
                    'Styles You Might Fancy',
                    style: TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Delight in the curated clothing service\nwe have prepared, drawing from a variety\nof esteemed brands, exclusively for you',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Spacer(flex: 1), // จัดการพื้นที่ระหว่าง Text และ Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Container(
                    width: 15.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => WelcomeThird()),
                  );
                },
                child: Text('Next'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 65.0), // ใส่ padding ล่าง 10 หน่วยจากขอบด้านล่าง
            ],
          )),
    );
  }
}
