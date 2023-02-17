import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'course_2_view.dart';

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
            Image.asset(
              "assets/images/practica-background.png",
              width: 360,
              height: 800,
            ),
            Container(
              width: 360,
              height: 800,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 170,
                    height: 118,
                    child: SvgPicture.asset(
                      "assets/images/logo-scrummers.svg",
                    ),
                  ),
                  const Text(
                    "FLUTTER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 49.91,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Inter",
                    ),
                  ),
                  Container(
                    width: 136,
                    height: 42,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.0, 1.0],
                        colors: [
                          Color.fromARGB(255, 234, 77, 72),
                          Color.fromARGB(255, 249, 187, 61),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Course2View.routeName);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Ir",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Inter",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
