import 'package:disaster_relief_aid_flutter/view/RequestHelp.view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DisasterReliefAid")),
      body: Column(
        children: [
          Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            const ListTile(
              title: Text('Disaster in your area'),
              subtitle: Text(
                  'Atlanta, Georgia is currently experiencing an eduroma outage'),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              TextButton(
                  onPressed: () {}, child: const Text('More information')),
            ])
          ])),
          Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            const ListTile(
              title: Text('Do you need help?'),
              subtitle: Text(
                  'Request help right away if your are in a dangerous situation.'),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              TextButton(onPressed: () {}, child: const Text('Request Help')),
            ])
          ])),
          Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            const ListTile(
              title: Text('Disaster Relief tips'),
              subtitle:
                  Text('During a eduroam outage, it is recommended to...'),
            ),
          ]))
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Hazard Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ]),
    );
  }
}
