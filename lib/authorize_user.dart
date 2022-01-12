// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class AuthorizedUsers extends StatefulWidget {
  const AuthorizedUsers({Key? key}) : super(key: key);

  @override
  _AuthorizedUsersState createState() => _AuthorizedUsersState();
}

class _AuthorizedUsersState extends State<AuthorizedUsers> {
 
  final _formKey = GlobalKey<FormState>();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNumber = TextEditingController();
  final email = TextEditingController();
  final confirmPassword = TextEditingController();

  Widget _buildPassword() {
    return TextFormField(
      controller: password,
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
        suffixIcon: fullName.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => password.clear(),
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

  Widget _buildFullName() {
    return TextFormField(
      controller: fullName,
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
        suffixIcon: fullName.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => fullName.clear(),
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

  Widget _buildPhoneNumber() {
    return TextFormField(
      controller: phoneNumber,
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
        hintText: 'phone Number',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: phoneNumber.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => fullName.clear(),
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
      controller: email,
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
        suffixIcon: fullName.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => email.clear(),
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

  Widget _buildConfirmPassword() {
    return TextFormField(
      controller: confirmPassword,
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
        suffixIcon: fullName.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => confirmPassword.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please confirm password';
        } else if (value != password.text) {
          return 'password doesnt match';
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
    fullName.addListener(() => setState(() {}));
    phoneNumber.addListener(() => setState(() {}));
    email.addListener(() => setState(() {}));
    password.addListener(() => setState(() {}));
    confirmPassword.addListener(() => setState(() {}));
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
                            _buildFullName(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildEmail(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildPhoneNumber(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildPassword(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildConfirmPassword(),
                            const SizedBox(height: 25),
                            Container(
                              width: 240,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: RaisedButton(
                                  color: color.AppColor.homePageTheme.withOpacity(0.8),
                                  child: Text(
                                    'Add Authorized User',
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
                            child: const Text('Dependents'),),
                          ]),
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
