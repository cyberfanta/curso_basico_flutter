import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Course2View extends StatefulWidget {
  const Course2View({Key? key}) : super(key: key);

  static const routeName = '/Course2View';

  @override
  Course2ViewState createState() => Course2ViewState();
}

class Course2ViewState extends State<Course2View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
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
                        Navigator.pop(context);
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
                        "Regresar",
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
