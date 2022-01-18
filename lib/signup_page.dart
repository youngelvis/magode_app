// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //varables
  String? zone;
  final zoneOptions = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  final _formKey = GlobalKey<FormState>();
  final _firstName = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _email = TextEditingController();
  final _address = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _lastName = TextEditingController();
  //methods
  Widget _buildPhoneNumber() {
    return TextFormField(
      controller: _phoneNumber,
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
        suffixIcon: _phoneNumber.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _phoneNumber.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your First name';
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
        suffixIcon: _email.text.isEmpty
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
        } else if (value != _password.text) {
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
        labelText: 'First name',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'First name',
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

  Widget _buildLastName() {
    return TextFormField(
      controller: _lastName,
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
        labelText: 'Last name',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Last name',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _lastName.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _lastName.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type your Last name';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildZone() {
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
          'Select Zone',
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

  DropdownMenuItem<String> buildzoneItem(String zoneOptions) =>
      DropdownMenuItem(
          value: zoneOptions,
          child: Text(
            zoneOptions,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ));

  // state for changing text field
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstName.addListener(() => setState(() {}));
    _phoneNumber.addListener(() => setState(() {}));
    _email.addListener(() => setState(() {}));
    _password.addListener(() => setState(() {}));
    _confirmPassword.addListener(() => setState(() {}));
    _address.addListener(() => setState(() {}));
    _lastName.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: Container(
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
                height: 20,
              ),
              Text(
                'For residents and the people who own/run a business in Magodo Estate',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: OverflowBox(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Container(
                        color: color.AppColor.homePageBackground,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildFirstName(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildLastName(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildPhoneNumber(),
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
                            _buildZone(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildPassword(),
                            const SizedBox(
                              height: 10,
                            ),
                            _buildConfirmPassword(),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'please choose resident or type',
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: RaisedButton(
                                  color: color.AppColor.homePageTheme
                                      .withOpacity(0.8),
                                  child: Text(
                                    'Register',
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
                          ],
                        ),
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
