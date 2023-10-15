import 'package:flutter/material.dart';
import 'package:mcs_final1322/Intro/Welcome2.dart';

class WelcomeFrist extends StatelessWidget {
  const WelcomeFrist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/BG_Welcome1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Spacer(flex: 1),
              const Column(
                children: [
                  Text(
                    'Experience the ease of\ndiscovering fine attire',
                    style: TextStyle(
                        fontSize: 34, 
                        fontWeight: FontWeight.bold, 
                        height: 1.4),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Discover ensembles here that are\ncrafted to elevate your appearance',
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
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeSecond()),
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
              SizedBox(height: 65.0),
            ],
          )),
    );
  }
}
