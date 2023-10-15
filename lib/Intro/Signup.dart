import 'package:flutter/material.dart';
import 'package:mcs_final1322/Intro/Login.dart';
import 'package:mcs_final1322/model/users.dart';

// InformationUser

class UserSignup extends StatefulWidget {
  const UserSignup({Key? key}) : super(key: key);

  @override
  State<UserSignup> createState() => _UserSignupState();
}

class _UserSignupState extends State<UserSignup> {
  final formKey = GlobalKey<FormState>();
  InformationUsers users = InformationUsers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/BG_LoginRegister.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                width: 330.0,
                height: 590.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15.0,
                      spreadRadius: 10.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          onSaved: (String? username) {
                            users.username = username!;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          onSaved: (String? email) {
                            users.email = email!;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          onSaved: (String? password) {
                            users.password = password!;
                          },
                          obscureText: true, //ปิดรหัสไม่ให้เห็นว่าพิมอะไร
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          onSaved: (String? confirmpassword) {
                            users.confirmpassword = confirmpassword!;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            labelText: 'Confirm password',
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            formKey.currentState!.save();
                            print("username = ${users.username} email = ${users.email} password = ${users.password} confirmpassword = ${users.confirmpassword}");
                          },
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight:
                                  FontWeight.bold, // ทำให้ตัวอักษรเป็นตัวหนา
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                            onPrimary: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                height: 32,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text("Or Register with"),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                height: 32,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  width: 81, height: 43),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.facebook,
                                    color: Colors.blue, size: 30),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  elevation: MaterialStateProperty.all(0),
                                  shadowColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 6.5, horizontal: 25.5),
                                  ),
                                ),
                              ),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  width: 81, height: 43),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Image.network(
                                  'http://pngimg.com/uploads/google/google_PNG19635.png',
                                  fit: BoxFit.cover,
                                  width: 30,
                                  height: 30,
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  elevation: MaterialStateProperty.all(0),
                                  shadowColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 6.5, horizontal: 25.5),
                                  ),
                                ),
                              ),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  width: 81, height: 43),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.apple,
                                    color: Colors.black, size: 30),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  elevation: MaterialStateProperty.all(0),
                                  shadowColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 6.5, horizontal: 25.5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // setting the color to white
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserLogin()),
                    );
                  },
                  child: Text(
                    'Login Now',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(53, 194, 193, 1.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
