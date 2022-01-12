// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class AddStaff extends StatefulWidget {
  const AddStaff({Key? key}) : super(key: key);

  @override
  _AddStaffState createState() => _AddStaffState();
}

class _AddStaffState extends State<AddStaff> {
  String? relationshipStatus;
  final relationshipOptions = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5'
  ];
  String? employmentStatus;
  final employmentOptions = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  final _formKey = GlobalKey<FormState>();
  final residentCode = TextEditingController();
  final residentPhoneNumber = TextEditingController();
  final staffFullName = TextEditingController();
  final staffMobileNumber = TextEditingController();
  final agentDetail = TextEditingController();
  final employmentDate = TextEditingController();

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
        labelText: 'Resident Name',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Resident Name',
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
        labelText: 'Staff full name',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'staff full name',
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

  Widget _buildAgentDetail() {
    return TextFormField(
      controller: agentDetail,
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
        labelText: 'Staff contact/ Agent details',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Staff contact/ Agent details',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: agentDetail.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => agentDetail.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type staff contact or agent details';
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
        labelText: 'Validity Starts Dates',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Validity Starts Dates',
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
        labelText: 'Staff mobile number',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Staff mobile number (with country code)',
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
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildRelationship() {
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
          'Relationship',
          style: TextStyle(fontSize: 20),
        ),
        value: relationshipStatus,
        iconSize: 35,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
        items: relationshipOptions.map(buildRelationshipItem).toList(),
        onChanged: (value) => setState(() {
          relationshipStatus = value as String;
        }),
        validator: (value) => value == null ? 'select Relationship' : null,
      ),
    );
  }

  Widget _buildEmploymentStatus() {
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
          'Employment status',
          style: TextStyle(fontSize: 20),
        ),
        value: employmentStatus,
        iconSize: 35,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
        items: employmentOptions.map(buildEmploymentItem).toList(),
        onChanged: (value) => setState(() {
          employmentStatus = value as String;
        }),
        validator: (value) => value == null ? 'select Employment status' : null,
      ),
    );
  }

  // for relationship status drop down list
  DropdownMenuItem<String> buildRelationshipItem(String relationshipOptions) =>
      DropdownMenuItem(
          value: relationshipOptions,
          child: Text(
            relationshipOptions,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ));
  // for employment status drop down list
  DropdownMenuItem<String> buildEmploymentItem(String employmentOptions) =>
      DropdownMenuItem(
          value: employmentOptions,
          child: Text(
            employmentOptions,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    residentCode.addListener(() => setState(() {}));
    residentPhoneNumber.addListener(() => setState(() {}));
    staffFullName.addListener(() => setState(() {}));
    staffMobileNumber.addListener(() => setState(() {}));
    employmentDate.addListener(() => setState(() {}));
    agentDetail.addListener(() => setState(() {}));

  }
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
                      width: 110,
                    ),
                    Text(
                      'Add Staff',
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
                            _buildResidentCode(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildResidentPhoneNumber(),
                            const SizedBox(
                              height: 30,
                            ),
                            _buildStaffFullName(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildStaffMobileNumber(),
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
                            _buildAgentDetail(),
                            const SizedBox(height: 25),
                            Container(
                              width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: RaisedButton(
                                  color: color.AppColor.homePageTheme.withOpacity(0.8),
                                  child: Text(
                                    'Add New Staff',
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
                            const SizedBox(height: 28,),
                            RaisedButton(onPressed: (){},
                            shape:const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black,
                              width: 2)),
                            color: color.AppColor.homePageBackground,
                            child: const Text('Staff'),),
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
