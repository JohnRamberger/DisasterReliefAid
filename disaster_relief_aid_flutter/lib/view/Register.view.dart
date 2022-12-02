import 'package:disaster_relief_aid_flutter/component/DatePicker.component.dart';
import 'package:disaster_relief_aid_flutter/component/FormDropDown.component.dart';
import 'package:disaster_relief_aid_flutter/component/MultiSelectDropDown.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import "package:intl/intl.dart";

import '../DRA.config.dart';
import '../model/user.model.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Register"),
        ),
        body: const SingleChildScrollView(child: RegistrationForm()));
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    User user = User();

    return Form(
        key: _formKey,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
                child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 32),
                  child: Row(children: [
                    Expanded(
                        child: FormDropDown(
                            items: Config.languages,
                            labelText: "Language",
                            initialValue: Config.languages[0],
                            onSaved: (value) {
                              user.language = value;
                            }))
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 32),
                  child: Row(children: [
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "First Name",
                        hintText: "Enter your first name",
                      ),
                      autofillHints: const [AutofillHints.givenName],
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onSaved: (String? value) {
                        if (value != null && value.isNotEmpty) {
                          user.fname = value;
                        }
                      },
                    ))
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 32),
                  child: Row(children: [
                    Expanded(
                        child: DatePicker(
                      label: "Birthdate",
                      onChanged: (value) {
                        user.birthdate = value;
                      },
                      required: true,
                    ))
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 32),
                  child: Row(children: [
                    Expanded(
                        child: CustomMultiselectDropDown(
                      listOFStrings: Config.vulnerabilities.toList(),
                      onSelected: (List<dynamic> values) {
                        user.vulnerabilities =
                            values.map((e) => e as String).toList();
                      },
                      labelText: "Vulnerabilities",
                      hintText: "Select your vulnerabilities",
                    ))
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // process data woo!
                            //print form data
                            _formKey.currentState!.save();
                            print(user);
                          }
                        },
                        child: const Text("Submit"))
                  ],
                )
              ],
            ))));
  }
}
