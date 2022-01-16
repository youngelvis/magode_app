// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class Update_MemberInfo extends StatefulWidget {
  const Update_MemberInfo({Key? key}) : super(key: key);

  @override
  _Update_MemberInfoState createState() => _Update_MemberInfoState();
}

class _Update_MemberInfoState extends State<Update_MemberInfo> {
  // varables

  //drop down variables
  String? classificationStatus;
  final classificationOptions = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5'
  ];
  String? status;
  final statusOptions = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  String? zone;
  final zoneOptions = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  String? _selectResident;
  final residentOptions = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  //normal variables
  final _formKey = GlobalKey<FormState>();

  final _fullName = TextEditingController();
  final _mobileNumber = TextEditingController();
  final _email = TextEditingController();
  final _address = TextEditingController();
  final _valadityStartsDate = TextEditingController();
  final _validityEndsDate = TextEditingController();

// state for clearing textfield
  void initState() {
    // TODO: implement initState
    super.initState();

    _fullName.addListener(() => setState(() {}));
    _mobileNumber.addListener(() => setState(() {}));
    _email.addListener(() => setState(() {}));
    _address.addListener(() => setState(() {}));
    _valadityStartsDate.addListener(() => setState(() {}));
    _validityEndsDate.addListener(() => setState(() {}));
  }

  // methods

  Widget _buildFullName() {
    return TextFormField(
      controller: _fullName,
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
        suffixIcon: _fullName.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _fullName.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your Full name';
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
        labelText: 'mobile Number',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'mobile Number',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _mobileNumber.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _fullName.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your Full name';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      controller: _email,
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
        labelText: 'Email',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Email',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _fullName.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _email.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your email';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
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

  Widget _buildValidityStartDate() {
    return TextFormField(
      controller: _valadityStartsDate,
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
        labelText: 'Validity Starts (mm/dd/yyyy)',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Validity Starts (mm/dd/yyyy)',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _valadityStartsDate.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _valadityStartsDate.clear(),
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

  Widget _buildValidityEndsDate() {
    return TextFormField(
      controller: _validityEndsDate,
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
        labelText: 'Validity Ends (mm/dd/yyyy)',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Validity Ends (mm/dd/yyyy)',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _validityEndsDate.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _validityEndsDate.clear(),
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

// dropdown mthods
  Widget _buildclassification() {
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
          'classification',
          style: TextStyle(fontSize: 20),
        ),
        value: classificationStatus,
        iconSize: 35,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
        items: classificationOptions.map(buildclassificationItem).toList(),
        onChanged: (value) => setState(() {
          classificationStatus = value as String;
        }),
        validator: (value) => value == null ? 'select classification' : null,
      ),
    );
  }

  Widget _buildstatus() {
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
          ' status',
          style: TextStyle(fontSize: 20),
        ),
        value: status,
        iconSize: 35,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
        items: statusOptions.map(buildstatusItem).toList(),
        onChanged: (value) => setState(() {
          status = value as String;
        }),
        validator: (value) => value == null ? 'select status' : null,
      ),
    );
  }

  Widget _buildzone() {
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
          'zone',
          style: TextStyle(fontSize: 20),
        ),
        value: zone,
        iconSize: 35,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
        items: zoneOptions.map(buildzoneItem).toList(),
        onChanged: (value) => setState(() {
          zone = value as String;
        }),
        validator: (value) => value == null ? 'select zone' : null,
      ),
    );
  }

  Widget _buildselectResident() {
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
          'select resident',
          style: TextStyle(fontSize: 20),
        ),
        value: _selectResident,
        iconSize: 35,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
        items: residentOptions.map(buildresidentItem).toList(),
        onChanged: (value) => setState(() {
          _selectResident = value as String;
        }),
        validator: (value) => value == null ? 'select resident' : null,
      ),
    );
  }

  // for classification status drop down list
  DropdownMenuItem<String> buildclassificationItem(
          String classificationOptions) =>
      DropdownMenuItem(
          value: classificationOptions,
          child: Text(
            classificationOptions,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ));
  // for status status drop down list
  DropdownMenuItem<String> buildstatusItem(String statusOptions) =>
      DropdownMenuItem(
          value: statusOptions,
          child: Text(
            statusOptions,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ));

  // for zone status drop down list
  DropdownMenuItem<String> buildzoneItem(String zoneOptions) =>
      DropdownMenuItem(
          value: zoneOptions,
          child: Text(
            zoneOptions,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ));
  // for select resisdent drop down list
  DropdownMenuItem<String> buildresidentItem(String residentOptions) =>
      DropdownMenuItem(
          value: residentOptions,
          child: Text(
            residentOptions,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: Container(
          color: color.AppColor.homePageBackground,
          padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.arrow_back, size: 40),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Update Members Information',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: OverflowBox(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _buildselectResident(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildFullName(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildMobileNumber(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildEmail(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildAddress(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildclassification(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildstatus(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildzone(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildValidityStartDate(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildValidityEndsDate(),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: RaisedButton(
                                color: color.AppColor.homePageTheme
                                    .withOpacity(0.8),
                                child: Text(
                                  'Add New Staff',
                                  style: TextStyle(
                                      color: color.AppColor.homePageBackground,
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
                          const SizedBox(
                            height: 60,
                          ),
                        ],
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
            color: color.AppColor.homeSecondaryTheme,
            child: Icon(
              Icons.home,
              color: color.AppColor.homePageTheme,
              
            ),
          ),
        ),
      ),
    );
  }
}
