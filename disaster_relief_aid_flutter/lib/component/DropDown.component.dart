import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import "package:flutter/material.dart";

class DropDown extends StatefulWidget {
  DropDown(
      {required this.items,
      required this.labelText,
      required this.onSaved,
      this.hintText,
      this.initialValue,
      super.key});

  final List<dynamic> items;
  final String labelText;
  final String? hintText;
  final dynamic? initialValue;
  final dynamic Function() onSaved;

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  dynamic selected;

  @override
  Widget build(BuildContext context) {
    selected = widget.initialValue;
    return DropdownButtonFormField<String>(
      value: selected,
      items: widget.items.map<DropdownMenuItem<String>>((dynamic e) {
        return DropdownMenuItem<String>(value: e, child: Text(e));
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          selected = value!;
        });
      },
      isExpanded: true,
      decoration: InputDecoration(
          labelText: widget.labelText, hintText: widget.hintText ?? ""),
    );
  }
}

// class DropDown extends StatelessWidget {
//   const DropDown(
//       {super.key, required this.items, required this.label, this.initialValue});

//   final List<String> items;
//   final String label;
//   final String? initialValue;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<String>(
//       value: dropdownValue,
//       items: items.map<DropdownMenuItem<String>>((String e) {
//         return DropdownMenuItem<String>(value: e, child: Text(e));
//       }).toList(),
//       onChanged: (String? value) {
//         setState(() {
//           dropdownValue = value!;
//         });
//       },
//       isExpanded: true,
//       decoration: const InputDecoration(
//           labelText: "Language", hintText: "Select your language"),
//     );
//   }
// }
