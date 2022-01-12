// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  final _residentCode = TextEditingController();
  final _residentName = TextEditingController();
  final _currentPassword = TextEditingController();
  final _newPassword = TextEditingController();
  final _confirmPassword = TextEditingController();

  Widget _buildResidentName() {
    return TextFormField(
      controller: _residentName,
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
        suffixIcon: _residentName.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _residentName.clear(),
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

  Widget _buildResidentCode() {
    return TextFormField(
      controller: _residentCode,
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
        suffixIcon: _residentCode.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _residentCode.clear(),
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

  Widget _buildCurrentPassword() {
    return TextFormField(
      controller: _currentPassword,
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
        labelText: 'Current Password',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Current Password',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _residentName.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _currentPassword.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your current Password';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildConfirmPassword() {
    return TextFormField(
      controller: _confirmPassword,
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
        labelText: 'Confirm Passwsord',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Confirm Password',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _confirmPassword.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _confirmPassword.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please confirm password';
        } else if (value != _newPassword.text) {
          return 'password doesnt match';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      controller: _newPassword,
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
        labelText: 'New password',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'New password',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _newPassword.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _newPassword.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your new password';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _residentCode.addListener(() => setState(() {}));
    _residentName.addListener(() => setState(() {}));
    _currentPassword.addListener(() => setState(() {}));
    _newPassword.addListener(() => setState(() {}));
    _confirmPassword.addListener(() => setState(() {}));
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
                    width: 70,
                  ),
                  Text(
                    'Add Authorized Users',
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
                      _buildResidentCode(),
                      const SizedBox(
                        height: 10,
                      ),
                      _buildResidentName(),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildCurrentPassword(),
                      const SizedBox(
                        height: 10,
                      ),
                      _buildPassword(),
                      const SizedBox(
                        height: 10,
                      ),
                      _buildConfirmPassword(),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 200,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: RaisedButton(
                            color:
                                color.AppColor.homePageTheme.withOpacity(0.8),
                            child: Text(
                              'Change Password',
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
                      ),
                    ]),
              ))))
            ],
          ),
        ),
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
