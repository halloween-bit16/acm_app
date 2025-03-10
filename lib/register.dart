import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/registerr-fotor-20250206113810.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 75),
              child: Text(
                'Welcome, new user!',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.42,
                    right: 35,
                    left: 35),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(67, 119, 164, 187),
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(67, 119, 164, 187),
                      filled: true,
                      hintText: 'Enter new Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(67, 119, 164, 187),
                      filled: true,
                      hintText: 'Re-confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.lightBlue,
                          backgroundColor: Color.fromARGB(255, 20, 97, 164),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                          // ignore: deprecated_member_use
                          shadowColor: Colors.black.withOpacity(0.25),
                          minimumSize: Size(100, 50),
                          side: BorderSide(color: Colors.transparent, width: 2),
                        ),
                        onPressed: () {},
                        child: Text('Sign Up',
                            style: TextStyle(
                                color: Color.fromARGB(255, 174, 213, 229),
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 26, 51, 94),
                          backgroundColor: Color.fromARGB(255, 174, 213, 229),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                          // ignore: deprecated_member_use
                          shadowColor: Colors.black.withOpacity(0.17),
                          minimumSize: Size(100, 50),
                          side: BorderSide(color: Colors.transparent, width: 2),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Text('Sign In',
                            style: TextStyle(
                                color: Color.fromARGB(255, 20, 97, 164),
                                fontSize: 15,
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
