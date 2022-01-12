// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  final _residentcode = TextEditingController();
  final _fullName = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _email = TextEditingController();
  final _classification = TextEditingController();
  final _status = TextEditingController();
  final _valadityStartsDate = TextEditingController();
  final _validityEndsDate = TextEditingController();
  final _zone = TextEditingController();
  final _address = TextEditingController();
  final _residentType = TextEditingController();

  Widget _buildResidentCode() {
    return TextFormField(
      controller: _residentcode,
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
        suffixIcon: _residentcode.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _residentcode.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type Resident Code';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

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
        hintText: 'Phone Number',
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
          return 'please type Phone Number';
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
          return 'please type your Email';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildClassification() {
    return TextFormField(
      controller: _classification,
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
        labelText: 'Classification',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Classification',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _classification.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _classification.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type Classification';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
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
        labelText: 'Validity Starts Dates',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Validity Starts Dates',
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
        labelText: 'Validity Ends Dates',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Validity Ends Dates',
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

  Widget _buildResidentType() {
    return TextFormField(
      controller: _residentType,
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
        labelText: 'Resident Type',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'Resident Type',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _residentType.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _residentType.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please type Resident Type';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _residentcode.addListener(() => setState(() {}));
    _fullName.addListener(() => setState(() {}));
    _phoneNumber.addListener(() => setState(() {}));
    _email.addListener(() => setState(() {}));
    _classification.addListener(() => setState(() {}));
    _status.addListener(() => setState(() {}));
    _valadityStartsDate.addListener(() => setState(() {}));
    _validityEndsDate.addListener(() => setState(() {}));
    _zone.addListener(() => setState(() {}));
    _address.addListener(() => setState(() {}));
    _residentType.addListener(() => setState(() {}));
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
                        'Edit Profile',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
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
                                _buildFullName(),
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
                                _buildClassification(),
                                const SizedBox(
                                  height: 10,
                                ),
                                _buildStatus(),
                                const SizedBox(
                                  height: 10,
                                ),
                                _buildValidityStartDate(),
                                const SizedBox(
                                  height: 10,
                                ),
                                _buildValidityEndsDate(),
                                const SizedBox(
                                  height: 10,
                                ),
                                _buildZone(),
                                const SizedBox(
                                  height: 10,
                                ),
                                _buildAddress(),
                                const SizedBox(
                                  height: 10,
                                ),
                                _buildResidentType(),
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  width: 180,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: RaisedButton(
                                      color: color.AppColor.homePageTheme,
                                      child: Text(
                                        'Update Profile',
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
                                )
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
            )));
  }
}
