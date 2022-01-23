// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../components/colors.dart' as color;

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  // varables
  final _fullName = TextEditingController();
  final _email = TextEditingController();
  final _subject = TextEditingController();
  final _message = TextEditingController();

//methods
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
          return 'please type your Email';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildSubject() {
    return TextFormField(
      controller: _subject,
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
        labelText: 'Subject',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Subject',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _subject.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _subject.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type a Subject';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildMessage() {
    return TextFormField(
      maxLines: 10,
      minLines: 6,
      controller: _message,
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
        labelText: 'Message',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Message',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _message.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _message.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type a Message';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
    );
  }

// states
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fullName.addListener(() => setState(() {}));
    _email.addListener(() => setState(() {}));
    _subject.addListener(() => setState(() {}));
    _message.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
          body: Container(
            color: color.AppColor.homePageBackground,
            padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_back, size: 40),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Location',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Magodo GRA, Lagos',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
                color: color.AppColor.homePageTheme,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Phone',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '+234 803 7750941',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
                color: color.AppColor.homePageTheme,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Email',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'magodoresidentasso@gmail.com',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 5,
                color: color.AppColor.homeSecondaryTheme,
              ),
              const SizedBox(
                height: 20,
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
                          _buildSubject(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildMessage(),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: RaisedButton(
                                color: color.AppColor.homePageTheme,
                                child: Text(
                                  'Send Message',
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
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ]),
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
          ) ),
    );
  }
}
