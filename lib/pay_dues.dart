// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class Paydues extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PayduesState();
  }
}

// creating an instance of a payment
class Pay {
  String category = '';
  String amount = '';
  String account = '';
  // making sure that i get all information
  Pay({required this.category, required this.amount, required this.account}) {
    assert(category != '');
    assert(amount != '');
    assert(account != '');
  }
}

class _PayduesState extends State<Paydues> {
  final items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  String? value;
  final accountController = TextEditingController();
  final amountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    amountController.addListener(() {
      setState(() {});
    });
    accountController.addListener(() {
      setState(() {});
    });
  }

  void submitHansdler() {
    setState(() {
      Pay(
          category: value as String,
          amount: amountController as String,
          account: accountController as String);
    });
  }

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
                    'Pay Dues',
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
                  // drop down text field
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black45, width: 2)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        hint: const Text(
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
                    child: TextField(
                      controller: amountController,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black45,
                            width: 2,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        hintText: 'Amount',
                        hintStyle: const TextStyle(
                            fontSize: 20, color: Colors.black45),
                        suffixIcon: amountController.text.isEmpty
                            ? Container(width: 0)
                            : IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () => amountController.clear(),
                              ),
                      ),
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
                    child: TextField(
                      controller: accountController,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black45,
                            width: 2,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        hintText: 'Account',
                        hintStyle: const TextStyle(
                            fontSize: 20, color: Colors.black45),
                        suffixIcon: accountController.text.isEmpty
                            ? Container(width: 0)
                            : IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () => accountController.clear(),
                              ),
                      ),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  //submit button
                  Container(
                    width: 150,
                    height: 75,
                    decoration: BoxDecoration(
                        color: color.AppColor.homePageTheme,
                        borderRadius: BorderRadius.circular(9)),
                    child: RaisedButton(
                      onPressed: submitHansdler,
                      child: const Text(
                        'Pay Dues',
                        style: TextStyle(fontSize: 2589, color: Colors.white),
                      ),
                      color: color.AppColor.homePageTheme,
                    ),
                  )
                ],
              )
            ])),
        bottomNavigationBar: SizedBox(
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
