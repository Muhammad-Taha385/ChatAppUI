import 'package:chatuiapp/domain/constants/appcolors.dart';
import 'package:chatuiapp/repository/screens/uihelper.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller =  TextEditingController();
  // const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon:Icon(Icons.arrow_back_ios_new_sharp)),
      backgroundColor:Theme.of(context).brightness==Brightness.dark ? Appcolors.scaffolddark:Appcolors.scaffoldlight,
      title: Uihelper.CustomText(text: "Your Profile", fontsize: 18, context: context,fontweight: FontWeight.bold,fontfamily: "Bold",),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Theme.of(context).brightness == Brightness.dark ? Uihelper.Customimage(imagurl: "DarkMode.png") : Uihelper.Customimage(imagurl: "LightMode.png"),
            SizedBox(
              height: 30,
            ),
            Uihelper.CustomTextField(controller: firstnamecontroller, text: "First Name (Required)", textinputtype: TextInputType.name, context: context),
            SizedBox(
              height: 10,
            ),
            Uihelper.CustomTextField(controller: lastnamecontroller, text: "Last Name (Required)", textinputtype: TextInputType.name, context: context),
            // FloatingActionButton(onPressed: )
          ],
        ),

      ),
      floatingActionButton: Uihelper.CustomButton(Buttonname: "Save", callback: (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}