import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../DRA.config.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Register"),
        ),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: Center(
                child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 32),
                  child: Row(
                      children: const [Expanded(child: LanguageDropDown())]),
                ),
                const Text("asdadsad")
              ],
            ))));
  }
}

class LanguageDropDown extends StatefulWidget {
  const LanguageDropDown({super.key});

  @override
  State<LanguageDropDown> createState() => _LanguageDropDownState();
}

class _LanguageDropDownState extends State<LanguageDropDown> {
  String dropdownValue = Config.languages[0];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      items: Config.languages.map<DropdownMenuItem<String>>((String e) {
        return DropdownMenuItem<String>(value: e, child: Text(e));
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
}
