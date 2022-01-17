// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class SignIN extends StatefulWidget {
  const SignIN({Key? key}) : super(key: key);

  @override
  _SignINState createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  //varables
  final _formKey = GlobalKey<FormState>();
  final residentCode = TextEditingController();
  final _password = TextEditingController();
// stAtes for clearing text fields
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    residentCode.addListener(() => setState(() {}));
    _password.addListener(() => setState(() {}));
    }
  //methods
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

  Widget _buildPassword() {
    return TextFormField(
      controller: _password,
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
        labelText: 'password',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'password',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _password.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _password.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your Password';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: Container(
          color: color.AppColor.homePageBackground,
          padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                    color: color.AppColor.homeSecondaryTheme,
                    fontSize: 35,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 30,
              ),
              _buildResidentCode(),
              const SizedBox(
                height: 20,
              ),
              _buildPassword(),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: RaisedButton(
                    color: color.AppColor.homePageTheme.withOpacity(0.8),
                    child: Text(
                      'Add Family',
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
              const SizedBox(
                height: 20,
              ),
              Text(
                'Forgot your password?',
                style: TextStyle(
                  fontSize: 20,
                  color: color.AppColor.homePageTheme,
                  decoration: TextDecoration.underline
                ),
              )
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
