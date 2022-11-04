import 'package:flutter/material.dart';

class Learnflutterpage extends StatefulWidget {
  const Learnflutterpage({super.key});

  @override
  State<Learnflutterpage> createState() => _LearnflutterpageState();
}

class _LearnflutterpageState extends State<Learnflutterpage> {
  bool isSwitch = false;
  bool? isCheckedbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("actions");
              },
              icon: const Icon(Icons.info_outline))
        ],
        title: const Text('Flutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein.jpg'),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.black,
            ),
            Container(
              color: Colors.black,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.black,
              ),
              onPressed: () {
                debugPrint("Elevated button");
              },
              child: const Text(
                'Elevated button',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 142, 15, 15),
                  // backgroundColor: Colors.black),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("outlined button");
              },
              child: const Text(
                'outlined button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                  // backgroundColor: Colors.black),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint("TEXT button");
              },
              child: const Text(
                'TEXT button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                  // backgroundColor: Colors.black),
                ),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint(' This is a row widget');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text(
                    'Row widget',
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.local_fire_department,
                      color: Colors.deepOrangeAccent),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newbool) {
                  setState(() {
                    isSwitch = newbool;
                  });
                }),
            Checkbox(
              value: isCheckedbox,
              onChanged: (bool? newbool) {
                setState(() {
                  isCheckedbox = newbool;
                });
              },
            ),
            Image.network(
                'https://images.saatchiart.com/saatchi/300119/art/2565930/1635850-HSC00001-7.jpg'),
          ],
        ),
      ),
    );
  }
}
