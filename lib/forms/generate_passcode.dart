// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../components/colors.dart' as color;

class GeneratePasscode extends StatefulWidget {
  const GeneratePasscode({Key? key}) : super(key: key);

  @override
  _GeneratePasscodeState createState() => _GeneratePasscodeState();
}

class _GeneratePasscodeState extends State<GeneratePasscode> {
  final _formKey = GlobalKey<FormState>();
  final _pickedTime = TextEditingController();
  TimeOfDay _time = TimeOfDay.now();
  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: _time,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != _time) {
      setState(() {
        _time = timeOfDay;
      });
    }
  }

  //varables
  final _email = TextEditingController();
  final _fullName = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _scheduleDate = TextEditingController();
  String? _population;
  final _populationOptions = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  //state for clearing textfield
  void initState() {
    // TODO: implement initState
    super.initState();
    _fullName.addListener(() => setState(() {}));
    _phoneNumber.addListener(() => setState(() {}));
    _email.addListener(() => setState(() {}));
    _scheduleDate.addListener(() => setState(() {}));
    _pickedTime.addListener(() => setState(() {}));
  }

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

  Widget _buildScheduleDate() {
    return TextFormField(
      controller: _scheduleDate,
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
        labelText: 'schedule Date (mm/dd/yyyy)',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'schedule Date (mm/dd/yyyy)',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _scheduleDate.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _scheduleDate.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please select schedule Date';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.datetime,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildPickedTime() {
    return TextFormField(
      controller: _pickedTime,
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
        labelText: 'schedule time',
        labelStyle: const TextStyle(fontSize: 20),
        hintText: 'schedule time',
        hintStyle: const TextStyle(fontSize: 20, color: Colors.black45),
        suffixIcon: _pickedTime.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => _pickedTime.clear(),
              ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please schedule time';
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.done,
      onTap: () async {
        await _selectTime(context);
        _pickedTime.text = _time.format(context);
      },
    );
  }

  Widget _buildpopulation() {
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
          'population',
          style: TextStyle(fontSize: 20),
        ),
        value: _population,
        iconSize: 35,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
        items: _populationOptions.map(buildpopulationItem).toList(),
        onChanged: (value) => setState(() {
          _population = value as String;
        }),
        validator: (value) => value == null ? 'select population' : null,
      ),
    );
  }

  DropdownMenuItem<String> buildpopulationItem(String _populationOptions) =>
      DropdownMenuItem(
          value: _populationOptions,
          child: Text(
            _populationOptions,
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
                    width: 90,
                  ),
                  Text(
                    'Generate Passcode',
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
                          _buildScheduleDate(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildPickedTime(),
                          const SizedBox(
                            height: 10,
                          ),
                          _buildpopulation(),
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
                                  'Generate Passcode',
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
                            height: 30,
                          ),
                          RaisedButton(
                            onPressed: () {},
                            shape: const RoundedRectangleBorder(
                                side:
                                    BorderSide(color: Colors.black, width: 2)),
                            color: color.AppColor.homePageBackground,
                            child: const Text('Passcode Records'),
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
