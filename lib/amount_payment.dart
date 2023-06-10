import 'package:flutter/material.dart';
import 'package:my_app/save_export.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AmountPayment(),
  ));
}

class AmountPayment extends StatelessWidget {
  const AmountPayment({Key? key}) : super(key: key);

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
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 35,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(49, 26, 187, 1),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: const Icon(
                      Icons.attach_money_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Amount Payment',
                    style: TextStyle(
                      color: Color.fromRGBO(49, 26, 187, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.87,
                child: Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(10),
                  height: 560,
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
                        child: const Text(
                          'Date :',
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
                            child: Row(children: [
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
                            ]),
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
                          'Payer Name :',
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
                              hintText: 'Enter Name of Payer',
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
                          'Cash or Bank :',
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
                                        value: 'Cash',
                                        child: Text('Cash'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Cash',
                                        child: Text('Bank'),
                                      )
                                    ],
                                    onChanged: (String? value) {},
                                    hint: const Text(
                                      'Cash / Bank',
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
                          'Total Amount :',
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
                              hintText: 'Enter Total Amount',
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
                          'Receipt :',
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
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent),
                              child: const Text(
                                'Browse..',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text('No Files Selected.')
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
                                  return const SaveExport();
                                },
                              ),
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
