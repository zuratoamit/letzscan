import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    // TextEditingController mobileNumber = TextEditingController();

    // void submit() async {
    //   if (mobileNumber.text == "") return;
    //
    //   var appSignatureID = await SmsAutoFill().getAppSignature;
    //   Map sendOtpData = {
    //     "mobile_number": mobileNumber.text,
    //     "app_signature_id": appSignatureID
    //   };
    //   // print(sendOtpData);
    //   // Navigator.push(
    //   //           MaterialPageRoute(builder: (context) => const SplashScreens()) as BuildContext
    //   // );
    // }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30 ,horizontal: 16),
          alignment: Alignment.center,
          child:  Expanded(
            child: Column(
              children:  [
                Row(
                  children: const [
                    Icon(Icons.arrow_back,color: Color(0xFF0B1854))
                  ],
                ),

                Container(
                  margin: const EdgeInsets.only(top:40),
                  child: Row(
                    children: const [
                      Expanded(
                        child:
                        Text(
                          'LOGIN WITH OTP',
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
                          'We will send you One Time Password on this Mobile number',
                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0xFF4A4F52)),
                        ),
                      ),




                      // TextFormField(
                      //   decoration: const InputDecoration(
                      //     border: UnderlineInputBorder(),
                      //     hintText: 'test',
                      //   ),
                      // )
                    ],
                  ),
                ),


                Container(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(8),
                  //   color: const Color(0xFFC2C0C0),
                  // ),
                  child:  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: TextField(
                      // controller: mobileNumber,
                      keyboardType: TextInputType.number,
                      // style: ButtonStyle(backgroundColor: Color(0xFFEB3B34)),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        // labelText: 'Enter your username',
                        hintText: "Enter Mobile Number",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                ElevatedButton(
                  // onPressed: submit,
                  onPressed: () {  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xFFFFFFFF),
                    backgroundColor: const Color(0xFFEB3B34)
                  ),
                  child: const Text(
                      "Send OTP",
                  ),
                )

              ],
            ),
          ),
        )

      ),
    );
  }
}
