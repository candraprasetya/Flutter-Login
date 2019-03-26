import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Design',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0, top: 50.0),
                child: Text(
                  'Login Now',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent[600]),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 20.0),
                    child: new SizedBox(
                      height: 60.0,
                      width: 150.0,
                      child: RaisedButton(
                        elevation: 8.0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        color: Colors.orange,
                        child: Text('Login'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: MaterialButton(
                      child: Text(
                        'Lupa password',
                      ),
                    ),
                  ),
                ],
              )
            ]))));
  }
}
