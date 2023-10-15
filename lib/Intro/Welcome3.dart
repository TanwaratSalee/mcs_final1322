import 'package:flutter/material.dart';
import 'package:mcs_final1322/Intro/Signup.dart';

class WelcomeThird extends StatelessWidget {
  const WelcomeThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/BG_Welcome3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Spacer(flex: 1), 
              Column(
                children: [
                  Text(
                    'Enjoy!',
                    style: TextStyle(
                        fontSize: 48, fontWeight: FontWeight.bold, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'The convenience of matching attire that complements your individuality',
                    style: TextStyle(
                        fontSize: 18,
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
                ],
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserSignup()),
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
