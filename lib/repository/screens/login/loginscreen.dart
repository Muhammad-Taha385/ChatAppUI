import 'package:chatuiapp/repository/screens/OTPScreen/otpscreen.dart';
import 'package:chatuiapp/repository/screens/uihelper.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phonecontroller = TextEditingController();
  // const LoginScreen({super.key,required Texphonecontroller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_sharp)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomText(text: "Enter Your Phone Number", fontsize: 24, context: context,fontweight: FontWeight.bold,fontfamily: "bold"),
            SizedBox(height: 20,),
            Uihelper.CustomText(text: "Please confirm your country code", fontsize: 14, context: context),
            Uihelper.CustomText(text: "your phone number", fontsize: 14, context: context),

            SizedBox(height: 20,),
            Uihelper.CustomTextField(controller: phonecontroller, text: "Phone number", textinputtype: TextInputType.number, context: context)
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(Buttonname: "Continue", callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPScreen()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}