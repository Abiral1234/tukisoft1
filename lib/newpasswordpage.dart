import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/verificationpage.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Newpassword(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Newpassword extends StatelessWidget {
  const Newpassword({Key? key}) : super(key: key);

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
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const Verificationpage();
                    }),
                  );
                },
                backgroundColor: const Color.fromRGBO(49, 26, 187, 1),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            const SizedBox(width: 18),
            const Text(
              'Create New Password',
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
              Icons.lock_open_outlined,
              size: 110,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 25),
          const SizedBox(
            width: 330,
            child: Text(
              'Your New Password Must Be Different From Your Old Password',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromRGBO(49, 26, 187, 1)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 25),
          const SizedBox(
            width: 330,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter New Password',
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.lock_outline,
                  color: Color.fromRGBO(49, 26, 187, 1),
                ),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 15),
          const SizedBox(
            width: 330,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.lock_outline,
                  color: Color.fromRGBO(49, 26, 187, 1),
                ),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 45,
            width: 330,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext ontext) {
                  return const LoginPage();
                }));
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
                    'Change',
                    style: TextStyle(
                      fontSize: 20,
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
