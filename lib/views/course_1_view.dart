import 'package:flutter/material.dart';

class Course1View extends StatefulWidget {
  const Course1View({Key? key}) : super(key: key);

  static const routeName = '/Course1View';

  @override
  Course1ViewState createState() => Course1ViewState();
}

class Course1ViewState extends State<Course1View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360,
        height: 800,
        child: Stack(
          children: [
            //Image de Fondo
            Container(
              width: 360,
              height: 800,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("FLUTTER"),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Ir"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
