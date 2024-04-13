import 'package:digital_ticketing_system/Traveller/userhome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class traveller_login_page extends StatefulWidget {
  const traveller_login_page({Key? key}) : super(key: key);

  @override
  State<traveller_login_page> createState() => _login_pageState();
}

class _login_pageState extends State<traveller_login_page> {
  final border = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          // Primary widget for responsiveness
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20.0),
                Image.asset(
                  'assests/traveller_loginphoto.png',
                  fit: BoxFit.contain,
                  height: MediaQuery.of(context).size.width < 768 ? 150 : 200,
                ),
                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 40.0),
                ),
                const Text(
                  "You are just one step away",
                  style: TextStyle(fontSize: 18.0, color: Colors.grey),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        MediaQuery.of(context).size.width > 768 ? 50.0 : 20.0,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      prefixIcon: const Icon(Icons.phone),
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                    keyboardType: TextInputType.number,

                    maxLength: 10, // Set maximum length to 10 characters
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Enter OTP",
                  style: TextStyle(fontSize: 27.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: PinCodeTextField(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    appContext: context,
                    keyboardType: TextInputType.number,
                    animationType: AnimationType.scale,
                    animationDuration: const Duration(milliseconds: 300),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    length: 4,
                    enableActiveFill: true,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(7),
                      fieldHeight: 60,
                      fieldWidth: 50,
                      activeFillColor: Colors.blue,
                      activeColor: Colors.blue,
                      inactiveFillColor: const Color(0xffffffff),
                      inactiveColor: const Color(0xff9d9d9d),
                      selectedColor: const Color(0xff00ffa2),
                      selectedFillColor: const Color(0xffffffff),
                    ),
                    validator: (v) {
                      if (v.toString().isEmpty || v!.length != 4) {
                        return "Please enter valid OTP";
                      }
                      return null;
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Resend OTP",
                    style: const TextStyle(fontSize: 18.0),
                  ),
                ),
                const SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const userhome_page())));
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                        MediaQuery.of(context).size.width > 768 ? 400.0 : 300.0,
                        50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    backgroundColor: const Color(0xffea9f2f),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(45.0, 20, 30, 0),
                    child: Text(
                      "By Clicking on Submit, you are agree to Privacy Policy and Terms & Conditions",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
