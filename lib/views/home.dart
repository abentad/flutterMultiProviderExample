import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/controller/number_provider.dart';
import 'package:test_app/views/next.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NumberProvider>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: provider.increaseNumber,
        child: Icon(Icons.add),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<NumberProvider>(
                builder: (context, provider, widget) {
                  return Text(provider.number.toString());
                },
              ),
              MaterialButton(
                onPressed: () => Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => Next(),
                  ),
                ),
                child: Text('Next Screen'),
                color: Colors.teal,
              )
            ],
          ),
        ),
      ),
    );
  }
}
