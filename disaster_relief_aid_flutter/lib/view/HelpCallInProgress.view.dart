import 'package:disaster_relief_aid_flutter/view/HelpCallInProgress.view.dart';
import 'package:flutter/material.dart';

class HelpCallInProgressView extends StatelessWidget {
  const HelpCallInProgressView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Help Call in Progress"),
        ),
        body: const SingleChildScrollView(
            child: Center(
          child: Text("Help is on the way!", style:TextStyle(color:Colors.red)),
        )));
  }
}
