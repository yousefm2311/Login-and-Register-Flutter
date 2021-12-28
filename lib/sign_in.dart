// ignore_for_file: sized_box_for_whitespace, avoid_print, deprecated_member_use
import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'login.dart';
class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<SigninPage> {
  int activeIndex = 0;
  var password = true;
  var password1 = true;
  var b = Colors.black;
  var b1 = Colors.black;
  TextEditingController dateStart = TextEditingController();
  Future startDate() async {
    DateTime date = DateTime(1950);
    FocusScope.of(context).requestFocus(FocusNode());
    date = (await showDatePicker(
        context: context,
        initialDate: DateTime.utc(1999,11,23),
        firstDate: DateTime(1950),
        lastDate: DateTime.now()))!;
    var formatStartDate = DateFormat('M/d/y').format(date);
    dateStart.text = formatStartDate;
    print('Start : ' + formatStartDate);
  }
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        activeIndex++;
        if (activeIndex == 4) {
          activeIndex = 0;
        }
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Register",
              style: TextStyle(color: Colors.black, fontSize: 25)),
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 0,
                ),
            FadeInDown(
              delay: const Duration(milliseconds: 400),
                child: Container(
                  height: 120,
                  child: Stack(children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        'assets/images/v.png',
                        scale: 1.5,
                      ),
                    ),
                  ]),
                ),),
                const SizedBox(
                  height: 20,
                ),
            FadeInDown(
              delay: const Duration(milliseconds: 500),
                child: TextField(
                  //FirstName
                  cursorColor: Colors.black,
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    labelText: 'Firstname',
                    hintText: 'Firstname',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    floatingLabelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),),
                const SizedBox(
                  height: 10,
                ),
            FadeInDown(
              delay: const Duration(milliseconds: 600),
                child: TextField(
                  //LastName
                  cursorColor: Colors.black,
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    labelText: 'Lastname',
                    hintText: 'Lastname',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    floatingLabelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),),
                const SizedBox(
                  height: 10,
                ),
            FadeInDown(
              delay: const Duration(milliseconds: 700),
                child: TextField(
                  //PhoneNumber
                  keyboardType: TextInputType.phone,
                  cursorColor: Colors.black,
                  inputFormatters: [LengthLimitingTextInputFormatter(12)],
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    labelText: 'Phonenumber',
                    hintText: 'Phonenumber',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    suffixIcon: const Icon(
                      Iconsax.call,
                      color: Colors.black,
                      size: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    floatingLabelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),),
                const SizedBox(
                  height: 10,
                ),
            FadeInDown(
              delay: const Duration(milliseconds: 800),
                child: TextField(
                  //Birthday
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  keyboardType: TextInputType.datetime,
                  controller: dateStart,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    labelText: 'Birthday',
                    hintText: 'Birthday',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    suffixIcon:  IconButton(
                      onPressed: () async {
                        startDate();
                      },
                      icon: const Icon(
                        Iconsax.calendar_edit,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    floatingLabelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),

                ),),
                const SizedBox(
                  height: 10,
                ),
            FadeInDown(
              delay: const Duration(milliseconds: 900),
                child: TextField(
                  obscureText: password,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    labelText: 'Password',
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    // prefixIcon: Icon(Iconsax.key, color: Colors.black, size: 18, ),
                    suffixIcon: IconButton(
                      color: b,
                      icon: Icon(
                        password == true
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          password = !password;
                          b = b == Colors.black
                              ? const Color(0xFFC400C6)
                              : Colors.black;
                        });
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    floatingLabelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),),
                const SizedBox(
                  height: 10,
                ),
            FadeInDown(
              delay: const Duration(milliseconds: 1000),
                child: TextField(
                  obscureText: password1,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    labelText: 'Confirm Password',
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    // prefixIcon: Icon(Iconsax.key, color: Colors.black, size: 18, ),
                    suffixIcon: IconButton(
                      color: b1,
                      icon: Icon(
                        password1 == true
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          password1 = !password1;
                          b1 = b1 == Colors.black
                              ? const Color(0xFFC400C6)
                              : Colors.black;
                        });
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    floatingLabelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),),
                const SizedBox(
                  height: 50,
                ),
            FadeInDown(
              delay: const Duration(milliseconds: 1100),
                child: MaterialButton(
                  onPressed: () {},
                  height: 45,
                  splashColor: const Color(0xFF610094),
                  color: Colors.black,
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),),
                FadeInDown(
                  delay: const Duration(milliseconds: 900),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),),
              ],
            ),
          ),
        ));
  }
}
