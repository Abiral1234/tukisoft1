import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: JournalVoucher2(),
  ));
}

class JournalVoucher2 extends StatelessWidget {
  const JournalVoucher2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(49, 26, 187, 1),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 1.02,
                child: Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(10),
                  height: 620,
                  width: 400,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(6),
                        padding: const EdgeInsets.all(12),
                        width: 345,
                        height: 46,
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Voucher Number :',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Color.fromRGBO(102, 0, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 345,
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(6),
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero)),
                              hintText: 'Enter Voucher Number',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(6),
                        padding: const EdgeInsets.all(12),
                        width: 345,
                        height: 46,
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: const Text(
                          'Voucher Date :',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(102, 0, 255, 1),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 345,
                            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                            margin: const EdgeInsets.fromLTRB(6, 4, 1, 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: const Color.fromARGB(255, 195, 195, 195),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(6),
                                      fillColor: Colors.grey,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.all(Radius.zero),
                                      ),
                                      hintText: 'mm / dd / yyyy',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.calendar_month),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(6),
                        padding: const EdgeInsets.all(12),
                        width: 345,
                        height: 46,
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: const Text(
                          'Account Name :',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(102, 0, 255, 1),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 345,
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(6),
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero)),
                              hintText: 'Enter Account Name',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(6),
                        padding: const EdgeInsets.all(12),
                        width: 345,
                        height: 46,
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: const Text(
                          'Cr / Dr :',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(102, 0, 255, 1),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 345,
                        padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 305,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'Cr',
                                        child: Text('Cr'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Dr',
                                        child: Text('Dr'),
                                      )
                                    ],
                                    onChanged: (String? value) {},
                                    hint: const Text(
                                      'Cr or Dr',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(6),
                        padding: const EdgeInsets.all(12),
                        width: 345,
                        height: 46,
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: const Text(
                          'Amount :',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(102, 0, 255, 1),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 345,
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(10, 6, 6, 6),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.zero)),
                              hintText: 'Enter Amount',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(6),
                        padding: const EdgeInsets.all(12),
                        width: 345,
                        height: 46,
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: const Text(
                          'Short Narration :',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(102, 0, 255, 1),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 345,
                        padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
                        margin: const EdgeInsets.fromLTRB(6, 4, 1, 4),
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color.fromARGB(255, 195, 195, 195),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(6),
                                  fillColor: Colors.grey,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.zero),
                                  ),
                                  hintText: 'Enter Short Narration',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(49, 26, 187, 1)),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        margin: const EdgeInsets.fromLTRB(250, 5, 6, 5),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(49, 26, 187, 1)),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const LoginPage();
                              }),
                            );
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
