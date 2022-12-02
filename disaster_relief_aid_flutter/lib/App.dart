import 'package:flutter/material.dart';

// import config
import 'DRA.config.dart';

// import screens
import 'view/Register.view.dart';
import 'view/Home.view.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // check if user is logged in
    const bool isLoggedIn = false;

    // if user is not logged in, show register screen, else show home screen
    return MaterialApp(
      title: Config.appName,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: !isLoggedIn ? const RegisterView() : const HomeView(),
    );
  }
}
