import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyLoginState();
}

class _MyLoginState extends State<Login> {
  get onPrimary => true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/loginn-fotor-20250206113731.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 60),
              child: Text(
                'Welcome\nBack!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
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
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.only(left: 3),
                              foregroundColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // ignore: deprecated_member_use
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {},
                            child: Text('Forgot Password?',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 20, 97, 164),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ],
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
                            shadowColor: Colors.black.withOpacity(0.5),
                            minimumSize: Size(100, 50),
                            side:
                                BorderSide(color: Colors.transparent, width: 2),
                          ),
                          onPressed: () {},
                          child: Text('Sign In',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 174, 213, 229),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 26, 51, 94),
                            backgroundColor: Color.fromARGB(255, 174, 213, 229),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // ignore: deprecated_member_use
                            shadowColor: Colors.black.withOpacity(0.17),
                            minimumSize: Size(100, 50),
                            side:
                                BorderSide(color: Colors.transparent, width: 2),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: Text('New here? Sign Up',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 20, 97, 164),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
