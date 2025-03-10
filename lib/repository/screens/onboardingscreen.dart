// import 'package:chatuiapp/domain/constants/cubits/themecubit.dart';
import 'package:chatuiapp/domain/constants/appcolors.dart';
import 'package:chatuiapp/domain/constants/cubits/themecubit.dart';
import 'package:chatuiapp/repository/screens/login/loginscreen.dart';
import 'package:chatuiapp/repository/screens/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness==Brightness.dark ? Appcolors.scaffolddark:Appcolors.scaffoldlight,
        actions: [IconButton(onPressed: (){
          BlocProvider.of<ThemeCubit>(context).toggletheme();
        }, icon: Icon(Icons.dark_mode_outlined))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 0.25,
              // width: MediaQuery.of(context).size.width * 0.5,
            child:Uihelper.Customimage(imagurl: "Illustration.png"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
            Uihelper.CustomText(text: "Connect easily with", fontsize: 24,fontfamily: "bold",fontweight: FontWeight.bold,context: context),
            Uihelper.CustomText(text: "your family and friends", fontsize: 24,fontfamily: "bold",fontweight: FontWeight.bold,context: context),
            Uihelper.CustomText(text: "over countries", fontsize: 24,fontfamily: "bold",fontweight: FontWeight.bold,context: context),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(Buttonname: "Start Messaging", callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
// import 'package:chatuiapp/domain/constants/appcolors.dart';
// import 'package:chatuiapp/repository/screens/login/loginscreen.dart';
// import 'package:chatuiapp/repository/screens/uihelper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:chatuiapp/domain/constants/cubits/themecubit.dart';

// class OnBoardingScreen extends StatelessWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Get screen width and height
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).brightness == Brightness.dark
//             ? Appcolors.scaffolddark
//             : Appcolors.scaffoldlight,
//         actions: [
//           IconButton(
//             onPressed: () {
//               BlocProvider.of<ThemeCubit>(context).toggletheme();
//             },
//             icon: Icon(Icons.dark_mode_outlined),
//           )
//         ],
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               // Use a responsive image size
//               Container(
//                 width: screenWidth * 0.6, // Make image width 60% of screen width
//                 height: screenHeight * 0.25, // Make image height 25% of screen height
//                 child: Uihelper.Customimage(imagurl: "Illustration.png"),
//               ),
//               SizedBox(height: screenHeight * 0.02), // Space between image and text
//               // Responsive Text Widgets
//               Uihelper.CustomText(
//                 text: "Connect easily with",
//                 fontsize: screenWidth * 0.04, // Text size responsive to width
//                 fontfamily: "bold",
//                 fontweight: FontWeight.bold,
//                 context: context,
//               ),
//               Uihelper.CustomText(
//                 text: "your family and friends",
//                 fontsize: screenWidth * 0.04,
//                 fontfamily: "bold",
//                 fontweight: FontWeight.bold,
//                 context: context,
//               ),
//               Uihelper.CustomText(
//                 text: "over countries",
//                 fontsize: screenWidth * 0.04,
//                 fontfamily: "bold",
//                 fontweight: FontWeight.bold,
//                 context: context,
//               ),
//               SizedBox(
//                 height: 100,
//               ),
//               Uihelper.CustomButton(
//                       Buttonname: "Start Messaging",
//                       callback: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => LoginScreen()),
//                         );
//                       },
//                     ),

//             ],
//           ),
//         ),
//       ),
//       //  Uihelper.CustomButton(
//       //   Buttonname: "Start Messaging",
//       //   callback: () {
//       //     Navigator.push(
//       //       context,
//       //       MaterialPageRoute(builder: (context) => LoginScreen()),
//       //     );
//       //   },
//       // ),
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }
// import 'package:chatuiapp/domain/constants/appcolors.dart';
// import 'package:chatuiapp/repository/screens/login/loginscreen.dart';
// import 'package:chatuiapp/repository/screens/uihelper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:chatuiapp/domain/constants/cubits/themecubit.dart';

// class OnBoardingScreen extends StatelessWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Get screen width and height
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).brightness == Brightness.dark
//             ? Appcolors.scaffolddark
//             : Appcolors.scaffoldlight,
//         actions: [
//           IconButton(
//             onPressed: () {
//               BlocProvider.of<ThemeCubit>(context).toggletheme();
//             },
//             icon: Icon(Icons.dark_mode_outlined),
//           ),
//         ],
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               // Use a responsive image size
//               Container(
//                 width: screenWidth * 0.6, // Make image width 60% of screen width
//                 height: screenHeight * 0.25, // Make image height 25% of screen height
//                 child: Uihelper.Customimage(imagurl: "Illustration.png"),
//               ),
//               SizedBox(height: screenHeight * 0.02), // Space between image and text

//               // Responsive Text Widgets
//               Uihelper.CustomText(
//                 text: "Connect easily with",
//                 fontsize: screenWidth * 0.06, // Text size responsive to width
//                 fontfamily: "bold",
//                 fontweight: FontWeight.bold,
//                 context: context,
//               ),
//               Uihelper.CustomText(
//                 text: "your family and friends",
//                 fontsize: screenWidth * 0.06,
//                 fontfamily: "bold",
//                 fontweight: FontWeight.bold,
//                 context: context,
//               ),
//               Uihelper.CustomText(
//                 text: "over countries",
//                 fontsize: screenWidth * 0.06,
//                 fontfamily: "bold",
//                 fontweight: FontWeight.bold,
//                 context: context,
//               ),
//               // Responsive spacing
//               SizedBox(height: screenHeight * 0.1), // Adjust space dynamically

//               // Responsive Button
//               Uihelper.CustomButton(
//                 Buttonname: "Start Messaging",
//                 callback: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => LoginScreen()),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:chatuiapp/domain/constants/appcolors.dart';
// import 'package:chatuiapp/repository/screens/login/loginscreen.dart';
// import 'package:chatuiapp/repository/screens/uihelper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:chatuiapp/domain/constants/cubits/themecubit.dart';

// class OnBoardingScreen extends StatelessWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).brightness == Brightness.dark
//             ? Appcolors.scaffolddark
//             : Appcolors.scaffoldlight,
//         actions: [
//           IconButton(
//             onPressed: () {
//               BlocProvider.of<ThemeCubit>(context).toggletheme();
//             },
//             icon: Icon(Icons.dark_mode_outlined),
//           ),
//         ],
//       ),
//       body: Center(
//         child: LayoutBuilder(
//           builder: (context, constraints) {
//             // Determine the available width and height for the layout
//             double screenWidth = constraints.maxWidth;
//             double screenHeight = constraints.maxHeight;

//             return SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Use a flexible layout for the image
//                   Container(
//                     width: screenWidth * 0.6, // 60% of the screen width
//                     height: screenHeight * 0.25, // 25% of the screen height
//                     child: Uihelper.Customimage(imagurl: "Illustration.png"),
//                   ),
//                   SizedBox(height: screenHeight * 0.02), // Adjust spacing

//                   // Responsive text sizes using LayoutBuilder
//                   Uihelper.CustomText(
//                     text: "Connect easily with",
//                     fontsize: screenWidth * 0.06, // Text size responsive to width
//                     fontfamily: "bold",
//                     fontweight: FontWeight.bold,
//                     context: context,
//                   ),
//                   Uihelper.CustomText(
//                     text: "your family and friends",
//                     fontsize: screenWidth * 0.06,
//                     fontfamily: "bold",
//                     fontweight: FontWeight.bold,
//                     context: context,
//                   ),
//                   Uihelper.CustomText(
//                     text: "over countries",
//                     fontsize: screenWidth * 0.06,
//                     fontfamily: "bold",
//                     fontweight: FontWeight.bold,
//                     context: context,
//                   ),

//                   // Adjust spacing dynamically based on screen height
//                   SizedBox(height: screenHeight * 0.1), // Adjust space dynamically

//                   // Responsive Button using Flexible
//                   Flexible(
//                     child: Uihelper.CustomButton(
//                       Buttonname: "Start Messaging",
//                       callback: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => LoginScreen()),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
