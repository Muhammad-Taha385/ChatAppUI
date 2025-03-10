import 'package:chatuiapp/domain/constants/appcolors.dart';
import 'package:flutter/material.dart';

class Uihelper {
  static Customimage({required String imagurl}){
    return Image.asset("assets/images/${imagurl}");
  }
  static CustomText({required String text,required double fontsize,String? fontfamily , FontWeight? fontweight,Color?color, required BuildContext context}){
    return Text(text,style: TextStyle(fontSize: fontsize,fontFamily: fontfamily??"regular",color: color??(Theme.of(context).brightness==Brightness.dark?Appcolors.textdarkmode:Appcolors.textlightmode),fontWeight: fontweight??FontWeight.normal),);
  }
  // ignore: non_constant_identifier_names
  static CustomButton({required String Buttonname,required VoidCallback callback,Color?buttoncolor }){
    return SizedBox(
      height: 52,
      width: 350,
      child:ElevatedButton(
        onPressed: (){

          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Appcolors.buttonlightmode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )
        ),
        child: Text(Buttonname,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Bold"),)) ,
    );
  }
  static CustomTextField({required TextEditingController controller,required String text , required TextInputType textinputtype,required BuildContext context}){
    return Container(
      height: 36,
      width: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness==Brightness.dark?Appcolors.CntainerDarkMode:Appcolors.ContainerlightMode,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8,bottom: 8),
        child: TextField(
          controller: controller,
          keyboardType: textinputtype,
          decoration: InputDecoration(
            hintText: text,
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Theme.of(context).brightness==Brightness.dark?Appcolors.hintdarkmode:Appcolors.hintlightmode,
              fontSize: 14,
            )
          ),
        ),
      ),
    );
  }
}

