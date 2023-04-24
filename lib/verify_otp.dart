import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  String codeValue = "";

  @override
  void codeUpdated() {
    // print("Update code $code");
    setState(() {
      // print("codeUpdated");
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
    // await SmsAutoFill().listenForCode;
    print("OTP listen Called");
  }

  @override
  void dispose() {
    // SmsAutoFill().unregisterListener();
    print("unregisterListener");
    super.dispose();
  }

 @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
         backgroundColor: Colors.white,

         body: Container(
           padding: const EdgeInsets.symmetric(vertical: 30 ,horizontal: 16),
           alignment: Alignment.center,
           child:  Expanded(
             child: Column(
               children:  [
                const SizedBox(
                  height: 5,
                ),

                 Container(
                   margin: const EdgeInsets.only(top:40),
                   child: Row(
                     children: const [
                       Expanded(
                         child:
                         Text(
                           'OTP VERIFICATION',
                           style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Color(0xFF0B1854)),
                         ),
                       )
                     ],
                   ),
                 ),


                 Container(
                   margin: const EdgeInsets.only(top:10),
                   child: Row(
                     children:  const [
                       Expanded(
                         child:
                         Text(
                           'Enter the OTP sent to +91 98765 43210',
                           style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0xFF4A4F52)),
                         ),
                       ),

                     ],
                   ),
                 ),


                 Container(
                   padding: const EdgeInsets.symmetric(vertical: 25),
                   child:  const Padding(
                     padding: EdgeInsets.symmetric(horizontal: 0),
                     child: PinFieldAutoFill(
                       // currentCode: codeValue,
                       codeLength: 5,

                       // onCodeChanged: (code) {
                       //   print("onCodeChanged $code");
                       //   setState(() {
                       //     codeValue = code.toString();
                       //   });
                       // },
                       // onCodeSubmitted: (val) {
                       //   print("onCodeSubmitted $val");
                       // },
                     )
                   ),
                 ),
                 // const SizedBox(
                 //   height: 5,
                 // ),

                 Row(
                   children: [
                     TextButton(
                          onPressed: () {  },
                        child: Expanded(
                            child: RichText(
                              text: const TextSpan(
                                text: 'Didn’t receive OTP?',
                                style: TextStyle(fontSize: 14.0,color: Colors.black87),
                                children: <TextSpan>[
                                  TextSpan(text: ' Resend OTP?', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xAFEB3B34))),
                                ],
                              ),
                            )
                        ),
                      ),


                   ],
                 ),



               ],
             ),
           ),
         )

     ),
   );
  }
}
