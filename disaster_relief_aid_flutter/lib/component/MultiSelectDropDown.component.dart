import 'package:flutter/material.dart';

class CustomMultiselectDropDown extends StatefulWidget {
  final dynamic Function(List<dynamic> selected) onSelected;
  final List<dynamic> listOFStrings;
  final String? labelText;
  final String? hintText;
  // final dynamic Function(List<dynamic> values) onSaved;

  const CustomMultiselectDropDown(
      {super.key,
      required this.onSelected,
      required this.listOFStrings,
      // required this.onSaved,
      this.labelText,
      this.hintText});

  @override
  createState() {
    return _CustomMultiselectDropDownState();
  }
}

class _CustomMultiselectDropDownState extends State<CustomMultiselectDropDown> {
  List<dynamic> listOFSelectedItem = [];
  dynamic selectedText = "";

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      // decoration:
      //     BoxDecoration(border: Border.all(color: PrimeDentalColors.grey1)),
      child: ExpansionTile(
        title: Text(
            '${widget.labelText ?? "Select"}${listOFSelectedItem.isNotEmpty ? " (${listOFSelectedItem.length})" : ""}'),
        children: <Widget>[
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.listOFStrings.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 8.0),
                child: _ViewItem(
                    item: widget.listOFStrings[index],
                    selected: (val) {
                      selectedText = val;
                      if (listOFSelectedItem.contains(val)) {
                        listOFSelectedItem.remove(val);
                      } else {
                        listOFSelectedItem.add(val);
                      }
                      widget.onSelected(listOFSelectedItem);
                      setState(() {});
                    },
                    itemSelected: listOFSelectedItem
                        .contains(widget.listOFStrings[index])),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ViewItem extends StatelessWidget {
  final String item;
  final bool itemSelected;
  final Function(String) selected;

  const _ViewItem(
      {required this.item, required this.itemSelected, required this.selected});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // return Padding(
    //   padding:
    //       EdgeInsets.only(left: size.width * .032, right: size.width * .098),
    //   child: Row(
    //     children: [
    //       SizedBox(
    //         height: 24.0,
    //         width: 24.0,
    //         child: Checkbox(
    //           value: itemSelected,
    //           onChanged: (val) {
    //             selected(item);
    //           },
    //           // activeColor: PrimeDentalColors.blue,
    //         ),
    //       ),
    //       SizedBox(
    //         width: size.width * .025,
    //       ),
    //       Text(
    //         item,
    //         // style: GoogleFonts.poppins(
    //         //   textStyle: TextStyle(
    //         //     color: PrimeDentalColors.grey,
    //         //     fontWeight: FontWeight.w400,
    //         //     fontSize: 17.0,
    //         //   ),
    //         // ),
    //       ),
    //     ],
    //   ),
    // );
    return ListTile(
      title: Text(item),
      onTap: () {
        selected(item);
      },
      leading: itemSelected
          ? const Icon(Icons.check_box)
          : const Icon(Icons.check_box_outline_blank),
    );
  }
}
