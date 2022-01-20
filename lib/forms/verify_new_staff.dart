// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../components/colors.dart' as color;

class Verify_NE_Staff extends StatefulWidget {
  const Verify_NE_Staff({Key? key}) : super(key: key);

  @override
  _Verify_NE_StaffState createState() => _Verify_NE_StaffState();
}

class _Verify_NE_StaffState extends State<Verify_NE_Staff> {
  String? selectStaff;
  final StaffOptions = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  final _formKey = GlobalKey<FormState>();
  final residentCode = TextEditingController();
  final residentPhoneNumber = TextEditingController();
  final staffFullName = TextEditingController();
  final staffMobileNumber = TextEditingController();
  final staffFullAddress = TextEditingController();
  final employmentDate = TextEditingController();
  final relationship = TextEditingController();
  final employmentStatus = TextEditingController();
  final identifyStatus = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    residentCode.addListener(() => setState(() {}));
    residentPhoneNumber.addListener(() => setState(() {}));
    staffFullName.addListener(() => setState(() {}));
    staffMobileNumber.addListener(() => setState(() {}));
    employmentDate.addListener(() => setState(() {}));
    relationship.addListener(() => setState(() {}));
    employmentStatus.addListener(() => setState(() {}));
    identifyStatus.addListener(() => setState(() {}));
    staffFullAddress.addListener(() => setState(() {}));

  }
  Widget _buildResidentPhoneNumber() {
    return TextFormField(
      controller: residentPhoneNumber,
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
        labelText: 'Resident phone number',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Resident phone number',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: residentPhoneNumber.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => residentPhoneNumber.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type Resident Phone number';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildResidentCode() {
    return TextFormField(
      controller: residentCode,
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
        labelText: 'Resident Code',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Resident Code',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: residentCode.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => residentCode.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your Resident code';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildStaffFullName() {
    return TextFormField(
      controller: staffFullName,
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
        labelText: 'Staff name',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'staff name',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: residentPhoneNumber.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => staffFullName.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type Staff full name';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildEmploymentDate() {
    return TextFormField(
      controller: employmentDate,
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
        labelText: 'Employment Date',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Employment Date',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: employmentDate.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => employmentDate.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please select Employment Date';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.datetime,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildStaffMobileNumber() {
    return TextFormField(
      controller: staffMobileNumber,
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
        labelText: 'Staff phone number',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Staff phone number',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: staffMobileNumber.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => staffMobileNumber.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your mobile number';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildRelationship() {
    return TextFormField(
      controller: relationship,
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
        labelText: 'Relationship',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Relationship',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: relationship.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => relationship.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type Staff full name';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildEmploymentStatus() {
    return TextFormField(
      controller: employmentStatus,
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
        labelText: 'Employment Status',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Employment Status',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: employmentStatus.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => employmentStatus.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type Staff full name';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildIdentifyStatus() {
    return TextFormField(
      controller: identifyStatus,
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
        labelText: 'Identify Status',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Identify Status',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: identifyStatus.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => identifyStatus.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please identify status';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildselectStaff() {
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
          'Select Staff',
          style: TextStyle(fontSize: 20),
        ),
        value: selectStaff,
        iconSize: 35,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
        items: StaffOptions.map(buildEmploymentItem).toList(),
        onChanged: (value) => setState(() {
          selectStaff = value as String;
        }),
        validator: (value) => value == null ? 'please select staff' : null,
      ),
    );
  }

  Widget _buildStaffAddress() {
    return TextFormField(
      controller: staffFullAddress,
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
        labelText: 'Staff Address',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Staff Address',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: staffFullAddress.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => staffFullAddress.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type staff address';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  DropdownMenuItem<String> buildEmploymentItem(String StaffOptions) =>
      DropdownMenuItem(
          value: StaffOptions,
          child: Text(
            StaffOptions,
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
                      width: 50,
                    ),
                    Text(
                      'Verify Newly Employed Staff',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
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
                            _buildselectStaff(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildResidentCode(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildResidentPhoneNumber(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildStaffFullName(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildStaffMobileNumber(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildStaffAddress(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildRelationship(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildEmploymentDate(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildEmploymentStatus(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildIdentifyStatus(),
                            const SizedBox(height: 25),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: RaisedButton(
                                  color: color.AppColor.homePageTheme
                                      .withOpacity(0.8),
                                  child: Text(
                                    'verify Staff',
                                    style: TextStyle(
                                        color:
                                            color.AppColor.homePageBackground,
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
                              height: 20,
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
                                    'Decline Verification',
                                    style: TextStyle(
                                        color:
                                            color.AppColor.homePageBackground,
                                        fontSize: 20),
                                  ),
                                  onPressed: () {}),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
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
