import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: new LoginPage(),
    theme: new ThemeData(
      primarySwatch: Colors.lightGreen
    )
    );
  }
}
class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState()=> new _LoginPageState();
}
class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  AnimationController _iconAnimationController;
  Animation<double>_iconAnimation;
  @override
  void initState(){
    super.initState();
    _iconAnimationController= new AnimationController(
      vsync: this, duration: new Duration(milliseconds:300)
    );
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.easeOut
    );
    _iconAnimation.addListener(() =>this.setState((){}));
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor:Colors.redAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/imagegirl.jpeg"),
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.luminosity,
          ),
              new Column(
               mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
              children: <Widget>[
               new FlutterLogo(
                 size: _iconAnimation.value*90,
               ),
               new Form(
                  child: new Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark, primarySwatch: Colors.teal,
                       inputDecorationTheme:new InputDecorationTheme(
                        labelStyle: new TextStyle(
                          color: Colors.teal,
                          fontSize: 20.0
                        )
                      )),
                        child: new Container(
                          padding: const EdgeInsets.all(40.0),
                        child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                              new TextFormField(
                               decoration: new InputDecoration(
                             labelText: "Enter Email",
                           ),
                           keyboardType: TextInputType.emailAddress,
                       ),
                       new TextFormField(
                           decoration: new InputDecoration(
                             labelText: "Enter Password",
                           ),
                           keyboardType: TextInputType.text,
                           obscureText: true,
                       ),
                       new Padding(
padding: const EdgeInsets.only(top:40.0),
                       ),
                       new MaterialButton(
                         height: 50.0,
                         minWidth: 100.0,
                         color:Colors.teal,
                         textColor:Colors.white,
                        // child: new Text("Login"),
                        child: new Icon(Icons.arrow_right_alt),

                         onPressed:()=>{},
                         splashColor: Colors.redAccent,
                       ),
                     ],
                 ),
                        ),
                  ),
               )
              ],
          ),
        ],
      ),
      );
  }
}