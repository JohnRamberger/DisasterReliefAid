import 'package:flutter/material.dart';

class RequestHelpView extends StatelessWidget {
  const RequestHelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Request Help"),
        ),
        body: const SingleChildScrollView(
            child: Center(
          child: Text("Request Help"),
        )));
  }
}
