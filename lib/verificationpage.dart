import 'package:flutter/material.dart';
import 'package:my_app/forgotpassword.dart';
import 'package:my_app/newpasswordpage.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Verificationpage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Verificationpage extends StatelessWidget {
  const Verificationpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
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
                      return const Forgetpassword();
                    }));
                  },
                  backgroundColor: const Color.fromRGBO(49, 26, 187, 1),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              const SizedBox(width: 18),
              const Text(
                'Verification',
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
                Icons.mark_email_read_outlined,
                size: 110,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),
            const SizedBox(
              width: 320,
              child: Text(
                'Enter the 4 digits code that is sent to Your Email Address',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Color.fromRGBO(49, 26, 187, 1)),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 60,
                width: 60,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 60,
                width: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                  height: 60,
                  width: 60,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(width: 10),
              SizedBox(
                height: 60,
                width: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 15),
            ]),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              child: const Text(
                'Resend Code?',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(49, 26, 187, 1),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 45,
              width: 260,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const Newpassword();
                    }),
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
                      'Verify',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_outlined),
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
