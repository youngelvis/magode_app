// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/colors.dart' as color;

class GetPasscode extends StatefulWidget {
  const GetPasscode({Key? key}) : super(key: key);

  @override
  _GetPasscodeState createState() => _GetPasscodeState();
}

class _GetPasscodeState extends State<GetPasscode> {
  // varable
  final _formKey = GlobalKey<FormState>();
  final _fullName = TextEditingController();
  final _phoneNumber = TextEditingController();

// method
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
        labelText: 'Visitor\'s name',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Visitor\'s name',
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
          return 'please type your Visitor\'s name';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

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
        labelText: 'Visitor\'s Phone Number',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Visitor\'s Phone Number',
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
          return 'please type your Visitor\'s Phone Number';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

// states
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fullName.addListener(() => setState(() {}));
    _phoneNumber.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          body: Container(
            color: color.AppColor.homePageBackground,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back, size: 40),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Get Passcode',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
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
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  _buildFullName(),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  _buildPhoneNumber(),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  // there is need for check box
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: RaisedButton(
                                        color: color.AppColor.homePageTheme,
                                        child: Text(
                                          'Get Passcode',
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
                                ],
                              ),
                            ),
                            const Divider(
                              thickness: 3,
                              color: Colors.black26,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 31, right: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Visitor\'s gate pass',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text('Show QR code at security gate.'),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    
                                    height: 130,
                                    width: 130,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/qrcode.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              thickness: 3,
                              color: Colors.black26,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 31, right: 30),
                              child: RaisedButton(
                                onPressed: () {},
                                shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.black, width: 1)),
                                color: color.AppColor.homePageBackground,
                                child: const Text('Pending Passcodes'),
                              ),
                            )
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
        ));
  }
}
