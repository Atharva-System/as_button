import 'package:flutter/material.dart';
import 'asbutton.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(50, 50, 50, 10),
              height: 50,
              child: ASButton(pressAction, "Login",
                  btnColor: Colors.blue, cornerRadius: 50.0),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
              height: 50,
              child: ASButton(pressAction, "Signup", cornerRadius: 50, borderColor: Colors.black,),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
              height: 50,
              child: ASButton(pressAction, "Profile", borderColor: Colors.lightBlue,),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
              height: 50,
              child: ASButton(pressAction, "Account"),
            ),
            Container(
              width: 50,
              height: 60,
              child:
              ASButtonCustomIcon(pressAction, 'assets/images/home.png'),
            ),
            Container(
              width: 50,
              height: 60,
              child: ASButtonWithSystemIcon(pressAction, Icons.arrow_back_ios),
            ),
          ],
        ),
      ),
    );
  }

  pressAction() {
    return _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text("THIS IS BUTTON ACTION")));
  }
}
