// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class PayBill extends StatefulWidget {
  const PayBill({Key? key}) : super(key: key);

  @override
  _PayBillState createState() => _PayBillState();
}

final _formKey = GlobalKey<FormState>();

class _PayBillState extends State<PayBill> {
  final _accountController = TextEditingController();
  final _amountController = TextEditingController();
  String? selectedItem;
  final items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  void initState() {
    super.initState();
    _accountController.addListener(() => setState(() {}));
    _amountController.addListener(() => setState(() {}));
  } // text field for the account

  Widget _selectCategory() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.black45, width: 2)),
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
          errorStyle: TextStyle(fontSize: 15),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
        isExpanded: true,
        hint: const Text(
          'Select category',
          style: TextStyle(fontSize: 20),
        ),
        value: selectedItem,
        iconSize: 35,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
        items: items.map(buildMenuItem).toList(),
        onChanged: (value) => setState(() {
          selectedItem = value as String;
        }),
        validator:(value)=> value == null ? 'select a category' : null,
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
  Widget _buildAccount() {
    return TextFormField(
      controller: _accountController,
      decoration: InputDecoration(
        errorStyle: const TextStyle(fontSize: 15),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black45,
            width: 2,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        labelText: 'account',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'account',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _accountController.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _accountController.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type account number';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  // form for the amount
  Widget _buildAmount() {
    return TextFormField(
      controller: _amountController,
      decoration: InputDecoration(
        errorStyle: const TextStyle(fontSize: 15),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black45,
              width: 2,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2)),
          labelText: 'Amount',
          hintText: 'Amount',
          hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
          suffixIcon: _amountController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => _amountController.clear(),
                )),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type amount';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
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
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _selectCategory(),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildAccount(),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildAmount(),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 150,
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: RaisedButton(
                            color: color.AppColor.homePageTheme,
                            child: Text(
                              'Pay Bils',
                              style: TextStyle(
                                  color: color.AppColor.homePageBackground,
                                  fontSize: 20),
                            ),
                            onPressed: () {
                              final isValid = _formKey.currentState!.validate();
                              if (isValid) {
                                _formKey.currentState?.save();
                              }
                            }),
                      )
                    ],
                  ))
            ]),
          ),
          bottomNavigationBar: SizedBox(
            height: 80,
            child: BottomAppBar(
              child: Icon(
                Icons.home,
                color: color.AppColor.homePageTheme,
              ),
            ),
          )),
    );
  }
}
