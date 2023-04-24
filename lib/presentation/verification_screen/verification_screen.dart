import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../dashboard_screen/dashboard_screen.dart';


class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> with CodeAutoFill {
  String codeValue = "";

  @override
  void codeUpdated() {
    print("Update code $code");
    setState(() {
      print("codeUpdated");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listenOtp();
  }

  void listenOtp() async {
    // await SmsAutoFill().unregisterListener();
    // listenForCode();
    await SmsAutoFill().listenForCode;
    print("OTP listen Called");
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    print("unregisterListener");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: PinFieldAutoFill(
                currentCode: codeValue,
                codeLength: 5,
                onCodeChanged: (code) {
                  print("onCodeChanged $code");
                  setState(() {
                    codeValue = code.toString();
                  });
                },
                onCodeSubmitted: (val) {
                  print("onCodeSubmitted $val");
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print(codeValue);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
                child: const Text("Verify OTP")),
            ElevatedButton(onPressed: listenOtp, child: const Text("Resend"))
          ],
        ),
      ),
    );
  }
}


Future<bool> fnSendSMS(String mobile, String template) async {
  var url = Uri.parse('https://enterprise.smsgupshup.com/GatewayAPI/rest');
  var sendTo = "91$mobile"; // concatenate '91' and the mobile number variable
  var postFields = {
    'method': 'sendMessage',
    'send_to': sendTo,
    'msg': template,
    'msg_type': 'TEXT',
    'userid': '2000215091',
    'password': 'VLWUmMCH',
    'auth_scheme': 'PLAIN',
    'v': '1.1',
    'format': 'JSON',
  };

  var response = await http.post(url, body: postFields);
  if (response.statusCode == 200) {
    var jsonResponse = json.decode(response.body);
    if (jsonResponse['response']['status'] == 'success') {
      return true;
    }
  }
  return false;
}
