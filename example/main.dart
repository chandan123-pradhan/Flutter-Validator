import 'package:flutter/material.dart';
import 'package:flutter_validator/Flutter_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Validator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
//Creating Object of the FlutterValidator class.
  FlutterValidator validator = new FlutterValidator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Center(
          child: InkWell(
            onTap: () {
              //Here We are calling Email validate method and passing that value which we want to compare with email.
              bool result =
                  validator.emailValidate(content: "Chandan@gmail.com");
              print(result);
            },
            child: Text("Botton"),
          ),
        ),
      ),
    );
  }
}
