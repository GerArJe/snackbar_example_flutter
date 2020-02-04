import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Builder(
              builder: (context) => FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: <Widget>[
                              Icon(Icons.thumb_up),
                              Text('Hello'),
                            ],
                          )));
                    },
                    child: Text('Show a SnackBar'),
                  )),
        ),
      ),
    );
  }
}
