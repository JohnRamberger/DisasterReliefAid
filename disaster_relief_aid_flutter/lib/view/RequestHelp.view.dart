import 'package:flutter/material.dart';
import 'package:disaster_relief_aid_flutter/view/HelpCallInProgress.view.dart';
class RequestHelpView extends StatelessWidget {
  const RequestHelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Request Help"),
        ),
        body: Column(
          children: [
            // const Text("test"),
            // const Text("testt"),
            ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (c) => HelpCallInProgressView())),
                child: const Text("Check Status"))
          ],
        ));
  }
}
