import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Overview(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(49, 26, 187, 1),
          actions: const [
            Icon(
              Icons.menu,
              textDirection: TextDirection.rtl,
            ),
          ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  child: Row(children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 18),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(49, 26, 187, 1),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.cloud_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Overview',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Color.fromRGBO(46, 29, 187, 1)),
                    ),
                  ]),
                ),
              ),
              const SizedBox(height: 2),
              Container(
                height: 140,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: const <BoxShadow>[],
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(12),
                      child: const Text(
                        'Customers & Users',
                        style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(49, 26, 187, 1)),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(49, 26, 187, 1),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 280),
                      child: const IconButton(
                        icon: Icon(
                          Icons.qr_code_2,
                          size: 42,
                          color: Color.fromRGBO(49, 26, 187, 1),
                        ),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 140,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: const <BoxShadow>[],
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(12),
                      child: const Text(
                        'Customers & Users',
                        style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(49, 26, 187, 1)),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(49, 26, 187, 1),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 280),
                      child: const IconButton(
                        icon: Icon(
                          Icons.qr_code_2,
                          size: 42,
                          color: Color.fromRGBO(49, 26, 187, 1),
                        ),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 18),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(49, 26, 187, 1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.person_pin_outlined,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Recent Activities',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(49, 26, 187, 1)),
                ),
              ]),
              Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                ),
                child: Container(
                  margin: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(102, 0, 255, 1),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(102, 0, 255, 1),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Joined',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(102, 0, 255, 1),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Type',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(102, 0, 255, 1),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color.fromRGBO(49, 26, 187, 1),
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.home)),
      //   ],
      // ),
    );
  }
}
