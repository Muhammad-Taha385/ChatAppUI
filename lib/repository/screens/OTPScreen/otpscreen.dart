import 'package:chatuiapp/domain/constants/appcolors.dart';
import 'package:chatuiapp/repository/screens/profilesscreen/profilescreen.dart';
import 'package:chatuiapp/repository/screens/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  // const OTPScreen({super.key});
  TextEditingController otpcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(fontSize: 20, color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all( color:Theme.of(context).brightness == Brightness.dark ? Appcolors.ContainerlightMode : Appcolors.CntainerDarkMode,),
    borderRadius: BorderRadius.circular(7),
  ),
);
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
   color:Theme.of(context).brightness == Brightness.dark ? Appcolors.otpdarkmode : Appcolors.otplightmode,
  borderRadius: BorderRadius.circular(7),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration!.copyWith(
    color:Theme.of(context).brightness == Brightness.dark ? Appcolors.otpdarkmode : Appcolors.otplightmode,
  ),
);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: 
        (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_sharp)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomText(text: "Enter Code", fontsize: 24, context: context,fontweight: FontWeight.bold,fontfamily: "bold",color:Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,),
            SizedBox(
              height: 5,
            ),
            Uihelper.CustomText(text: "We have sent you an SMS with the code", fontsize: 14, context: context,color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black),
            Uihelper.CustomText(text: "to +62 1309 - 1710 - 1920", fontsize: 14, context: context,color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Pinput(
                onCompleted: (value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen())),
                autofocus: true,
                controller: otpcontroller,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),

            ),
            // SizedBox(
            //   height: 80,
            // ),
            
          ],
        ),
      ),
      floatingActionButton: TextButton(onPressed: (){}, child: Text("Resend OTP",style: TextStyle(fontSize:16,color: Theme.of(context).brightness == Brightness.dark ? Appcolors.otplightmode : Appcolors.otptextlight),)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}