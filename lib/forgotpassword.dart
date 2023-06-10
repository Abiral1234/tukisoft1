import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/verificationpage.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Forgetpassword(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            const SizedBox(width: 10),
            SizedBox(
              width: 40,
              height: 40,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const LoginPage();
                  }));
                },
                backgroundColor: const Color.fromRGBO(49, 26, 187, 1),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            const SizedBox(width: 18),
            const Text(
              'Forget Password',
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(49, 26, 187, 1),
                  fontWeight: FontWeight.bold),
            ),
          ]),
          const SizedBox(height: 25),
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(49, 26, 187, 1),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.lock_outline,
              size: 110,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 25),
          const SizedBox(
            width: 280,
            child: Text(
              'Please Enter Your Email Address To Receive a Verification Code.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: Color.fromRGBO(49, 26, 187, 1)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 15),
          const SizedBox(
            width: 345,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter Email Address',
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.mark_email_unread,
                  color: Color.fromRGBO(49, 26, 187, 1),
                ),
              ),
              obscureText: false,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 45,
            width: 345,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Verificationpage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
                backgroundColor: const Color.fromRGBO(49, 26, 187, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Send',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward_outlined),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
