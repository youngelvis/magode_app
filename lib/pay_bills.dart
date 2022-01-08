// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class Paybills extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PaybillsState();
  }
}

class _PaybillsState extends State<Paybills> {
  final items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: color.AppColor.homePageBackground,
            padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
            child: Column(children: [
              Row(
                children: const [
                  Icon(Icons.arrow_back, size: 40),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    'Pay Bills',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black45, width: 2)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        hint:const Text(
                          'Select category',
                          style: TextStyle(fontSize: 20),
                        ),
                        value: value,
                        iconSize: 35,
                        icon: const Icon(Icons.arrow_drop_down,
                            color: Colors.black45),
                        items: items.map(buildMenuItem).toList(),
                        onChanged: (value) => setState(() {
                          this.value = value as String;
                        }),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // amount text field
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black45,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          hintText: 'Amount',
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.black45)),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // account text field
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black45,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        hintText: 'Account',
                        hintStyle:
                            TextStyle(fontSize: 20, color: Colors.black45),
                      ),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 150,
                    height: 75,
                    decoration: BoxDecoration(
                        color: color.AppColor.homePageTheme,
                        borderRadius: BorderRadius.circular(8)),
                    child: const RaisedButton(
                      onPressed: null,
                      child: Text(
                        'Pay Bill',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ])),
        bottomNavigationBar: Container(
          height: 80,
          child: BottomAppBar(
            child: Icon(
              Icons.home,
              color: color.AppColor.homePageTheme,
            ),
          ),
        ));
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
}
