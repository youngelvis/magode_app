// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class Indentify_NR_Members extends StatefulWidget {
  const Indentify_NR_Members({Key? key}) : super(key: key);

  @override
  _Indentify_NR_MembersState createState() => _Indentify_NR_MembersState();
}

class _Indentify_NR_MembersState extends State<Indentify_NR_Members> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedResident;
  final items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  final _firstName = TextEditingController();
  final _mobileNumber = TextEditingController();
  final _address = TextEditingController();
  final _zone = TextEditingController();
  final _validityStart = TextEditingController();
  final _validityEnds = TextEditingController();
  final _status = TextEditingController();

  Widget _buildFirstName() {
    return TextFormField(
      controller: _firstName,
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
        labelText: 'Full name',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Full name',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _firstName.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _firstName.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your First name';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildMobileNumber() {
    return TextFormField(
      controller: _mobileNumber,
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
        labelText: 'Phone Number',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Phone Number',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _mobileNumber.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _mobileNumber.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type Phone Number';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildValidityStart() {
    return TextFormField(
      controller: _validityStart,
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
        labelText: 'Validity Starts Dates (mm/dd/yyyy)',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Validity Starts Dates (mm/dd/yyyy)',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _validityStart.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _validityStart.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please select Validity Starts Date';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.datetime,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildValidityEnds() {
    return TextFormField(
      controller: _validityEnds,
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
        labelText: 'Validity Ends Dates (mm/dd/yyyy)',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Validity Ends Dates (mm/dd/yyyy)',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _validityEnds.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _validityEnds.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please select Validity Ends Date';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.datetime,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildStatus() {
    return TextFormField(
      controller: _status,
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
        labelText: 'Status',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Status',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _status.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _status.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type Status';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildZone() {
    return TextFormField(
      controller: _zone,
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
        labelText: 'Zone',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Zone',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _zone.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _zone.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please select Zone';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      controller: _address,
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
        labelText: 'Address',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Address',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _address.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _address.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type an Address';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  Widget _selectResident() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.black45, width: 2)),
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
            errorStyle: TextStyle(fontSize: 15),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
        isExpanded: true,
        hint: const Text(
          'Select category',
          style: TextStyle(fontSize: 20),
        ),
        value: _selectedResident,
        iconSize: 35,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
        items: items.map(buildMenuItem).toList(),
        onChanged: (value) => setState(() {
          _selectedResident = value as String;
        }),
        validator: (value) => value == null ? 'select a category' : null,
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
// the state below is for clearing the input field
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstName.addListener(() => setState(() {}));
    _mobileNumber.addListener(() => setState(() {}));
    _address.addListener(() => setState(() {}));
    _zone.addListener(() => setState(() {}));
    _validityEnds.addListener(() => setState(() {}));
    _validityStart.addListener(() => setState(() {}));
    _status.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: Container(
          color: color.AppColor.homePageBackground,
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(color: color.AppColor.homePageTheme),
                child: Container(
                  padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.person_crop_circle,
                        size: 80,
                      ),
                      Expanded(child: Container()),
                      Icon(Icons.menu, size: 40, color: Colors.black),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text('Identify Newly Register Members',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w800)),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: OverflowBox(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Container(
                        padding: const EdgeInsets.only( left: 30, right: 30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              _selectResident(),
                              const SizedBox(
                                height: 10,
                              ),
                              _buildFirstName(),
                              const SizedBox(
                                height: 10,
                              ),
                              _buildMobileNumber(),
                              const SizedBox(
                                height: 10,
                              ),
                              _buildAddress(),
                              const SizedBox(
                                height: 10,
                              ),
                              _buildZone(),
                              const SizedBox(
                                height: 10,
                              ),
                              _buildValidityStart(),
                              const SizedBox(
                                height: 10,
                              ),
                              _buildValidityEnds(),
                              const SizedBox(
                                height: 10,
                              ),
                              _buildStatus(),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20)),
                                    child: RaisedButton(
                                        color: color.AppColor.homePageTheme,
                                        child: Text(
                                          'Authorize',
                                          style: TextStyle(
                                              color: color
                                                  .AppColor.homePageBackground,
                                              fontSize: 20),
                                        ),
                                        onPressed: () {
                                          final isValid =
                                              _formKey.currentState!.validate();
                                          if (isValid) {
                                            _formKey.currentState?.save();
                                          }
                                        }),
                                  ),
                                  const SizedBox(height: 15,),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20)),
                                    child: RaisedButton(
                                        color: color.AppColor.homePageTheme,
                                        child: Text(
                                          'Decline',
                                          style: TextStyle(
                                              color: color
                                                  .AppColor.homePageBackground,
                                              fontSize: 20),
                                        ),
                                        onPressed: () {
                                          
                                        }),
                                  ),
                                  SizedBox(height: 130)
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
         bottomNavigationBar: SizedBox(
              height: 80,
              child: BottomAppBar(
                color: Colors.brown,
                child: Icon(
                  Icons.home,
                  color: color.AppColor.homePageTheme,
                  
                ),
              ),
            )
      ),
    );
  }
}
