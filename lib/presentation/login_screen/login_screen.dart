import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../verification_screen/verification_screen.dart';
import 'dart:math';

class LoginScreen extends StatelessWidget {
  TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController mobileNumber = TextEditingController();
    void submit() async {
      if (mobileNumber.text == "") return;

      var appSignatureID = await SmsAutoFill().getAppSignature;
      Map sendOtpData = {
        "mobile_number": mobileNumber.text,
        "app_signature_id": appSignatureID
      };
      print(sendOtpData);


      // final String mobileNumber = '9631116311';
      Random random = Random();
      int randomNumber = random.nextInt(90000) + 10000;
      final String messageTemplate = '$randomNumber is the OTP for logging in to your Vehicall account. OTP is valid till for 2 mins. Do not share with anyone. - Vehicall';

      bool sent = await fnSendSMS(mobileNumber.text, messageTemplate);
      if (sent) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Message sent successfully')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to send message')),
        );
      }

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VerifyOTPScreen()),
      );

    }

    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFC2C0C0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: mobileNumber,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Mobile Number",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: submit,
                child: const Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
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



}
