// import 'package:chatuiapp/domain/constants/appcolors.dart';
// import 'package:chatuiapp/repository/screens/uihelper.dart';
// import 'package:flutter/material.dart';

// class MoreOptionScreen extends StatelessWidget {
//   // const MoreOptionScreen({super.key});
//   List<Map<String,String>> arricons = [
//     {
//       "icon":"${Icons.person}",
//        "txt":"Account" 
//     },
//     {
//       "icon":"${Icons.chat_bubble_outline_outlined}",
//       "txt":"Chats"
//     },
//     {
//       "icon":"${Icons.notifications_active}",
//       "txt":"Notifications"
//     },
//     {
//       "icon":"${Icons.privacy_tip}",
//       "txt":"Privacy"
//     },
//     {
//       "icon":"${Icons.folder}",
//       "txt":"Data Usage"
//     },
//     {
//       "icon":"${Icons.help}",
//       "txt":"Help"
//     },
//     {
//       "icon":"${Icons.mail}",
//       "txt":"Invite your friends"
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       backgroundColor: Theme.of(context).brightness==Brightness.dark ? Appcolors.scaffolddark:Appcolors.scaffoldlight,
//       title: Uihelper.CustomText(text: "More", fontsize: 18, context: context,fontweight: FontWeight.bold,fontfamily: "Bold"),
//       ),
//       body: Column(
//         children: [
//           ListTile(
//             leading: Theme.of(context).brightness==Brightness.dark?Uihelper.Customimage(imagurl: "darkprofile.png"):Uihelper.Customimage(imagurl: "lightprofile.png"),
//             title: Uihelper.CustomText(text: "Muhammad Taha Usman", fontsize: 14, context: context,fontfamily: "Bold",fontweight: FontWeight.bold),
//             subtitle: Uihelper.CustomText(text: "0335-7856893", fontsize: 12, context: context),
//             trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right)),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: ListView.builder(itemBuilder: 
//             (context,index){
//               return ListTile(
//                 leading: Icon(arricons[index]["icon"] as IconData,),
//                 title: Uihelper.CustomText(text: arricons[index]["txt"].toString(), fontsize: 14, context: context),
//                 trailing: Icon(Icons.forward), 
//               );
//             },itemCount: arricons.length,),
//           )
//         ],
//       ),
//       // body: Center(
//       //   child: Text("More OPtion Screen"),
//       // ),
//     );
//   }
// }
import 'package:chatuiapp/domain/constants/appcolors.dart';
import 'package:chatuiapp/repository/screens/uihelper.dart';
import 'package:flutter/material.dart';

class MoreOptionScreen extends StatelessWidget {
  // const MoreOptionScreen({super.key});
  List<Map<String, Object>> arricons = [
    {
      "icon": Icons.person,
      "txt": "Account",
    },
    {
      "icon": Icons.chat_bubble_outline_outlined,
      "txt": "Chats",
    },
    {
      "icon": Icons.notifications_active,
      "txt": "Notifications",
    },
    {
      "icon": Icons.privacy_tip,
      "txt": "Privacy",
    },
    {
      "icon": Icons.folder,
      "txt": "Data Usage",
    },
    {
      "icon": Icons.help,
      "txt": "Help",
    },
    {
      "icon": Icons.mail,
      "txt": "Invite your friends",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Appcolors.scaffolddark
            : Appcolors.scaffoldlight,
        title: Uihelper.CustomText(
          text: "More",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: "Bold",
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark
                ? Uihelper.Customimage(imagurl: "darkprofile.png")
                : Uihelper.Customimage(imagurl: "lightprofile.png"),
            title: Uihelper.CustomText(
              text: "Muhammad Taha Usman",
              fontsize: 14,
              context: context,
              fontfamily: "Bold",
              fontweight: FontWeight.bold,
            ),
            subtitle: Uihelper.CustomText(
              text: "0335-7856893",
              fontsize: 12,
              context: context,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.forward),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(arricons[index]["icon"] as IconData,color: Theme.of(context).brightness==Brightness.dark?Appcolors.icondarkmode:Appcolors.iconlightmode,),
                  title: Uihelper.CustomText(
                    text: arricons[index]["txt"] as String,
                    fontsize: 14,
                    context: context,
                  ),
                  trailing: Icon(Icons.forward),
                );
              },
              itemCount: arricons.length,
            ),
          ),
        ],
      ),
    );
  }
}
