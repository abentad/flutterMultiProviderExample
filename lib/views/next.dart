import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/controller/number_provider.dart';

class Next extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<NumberProvider>(
                builder: (context, provider, widget) {
                  return (Text(provider.number.toString()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
