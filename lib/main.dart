import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: ElevatedButton(
                      onPressed: () {
                        print("press for too long");
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.yellowAccent,
                        fixedSize: Size(150, 150),
                        onPrimary: Colors.yellowAccent,
                        primary: Colors.blueAccent,
                        elevation: 20,
                      ),
                      child: Text(
                        "hi there, thank you to press for too long",
                        style: TextStyle(fontSize: 25),
                      )),
                ),
              ),
              Container(
                color: Colors.greenAccent,
                child: Container(
                    alignment: Alignment.center,
                    child: RaisedButton(
                      disabledElevation: 15,
                      colorBrightness: Brightness.light,
                      elevation: 25,
                      focusElevation: 20,
                      disabledTextColor: Colors.deepPurple,
                      disabledColor: Colors.blueGrey,
                      child: Text(
                        "Press me please to get the result",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        print("it is pressed , thank you");
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
