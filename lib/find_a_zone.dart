// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class FindZone extends StatefulWidget {
  const FindZone({Key? key}) : super(key: key);

  @override
  _FindZoneState createState() => _FindZoneState();
}

class _FindZoneState extends State<FindZone> {
  final _formKey = GlobalKey<FormState>();
  String? zone;
  final zoneOptions = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
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
          'zone',
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
                      'Find a zone/',
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
                              _buildZone(),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: RaisedButton(
                                    color: color.AppColor.homePageTheme,
                                    child: Text(
                                      'Authorize',
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
              color: Colors.brown[600],
              child: Icon(
                Icons.home,
                color: color.AppColor.homePageTheme,
              ),
            ),
          ),
        ));
  }
}
