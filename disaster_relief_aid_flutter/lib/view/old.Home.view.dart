import 'package:disaster_relief_aid_flutter/view/RequestHelp.view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Column(
          children: [
            const Text("hello 1"),
            const Text("hello 2"),
            ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (c) => RequestHelpView())),
                child: const Text("Request Help"))
          ],
        ));
  }
}
