import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: new LoginPage(),
    theme: new ThemeData(
      primarySwatch: Colors.blue
    )
    );
  }
}
class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState()=> new _LoginPageState();
}
class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor:Colors.blue,
       body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/imagegirl.jpeg"),
            fit: BoxFit.cover,
          )
        ]
      ),
      );
  }
}