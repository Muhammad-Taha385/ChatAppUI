import 'package:chatuiapp/domain/constants/appcolors.dart';
import 'package:chatuiapp/repository/screens/uihelper.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  // const ChatsScreen({super.key});
  var arrchats =[
{
      "img":"Haris.png",
      "Name":"Haris Arif",
      "Lastseen":"Good Morning, did you sleep yesterday?",
    },
    {
      "img":"Usaid.png",
      "Name":"Usaid Iqbal",
      "Lastseen":"Hey Brother!!! How are you?",
    },
    {
      "img":"Sami.png",
      "Name":"Sami Shoaib",
      "Lastseen":"Hi!!! Whats the plan of tonight?",
    },
    // {
    //   "img":"Haris.png",
    //   "Name":"Haris Arif",
    //   "Lastseen":"Last seen 2 days ago",
    // },
    {
      "img":"Hassaan.png",
      "Name":"Hassaan Aslam",
      "Lastseen":"Hi!!! Wanna have some chat?",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Theme.of(context).brightness==Brightness.dark ? Appcolors.scaffolddark:Appcolors.scaffoldlight,
        title: Uihelper.CustomText(text: "Chats", fontsize: 18, context: context,fontweight: FontWeight.bold,fontfamily: "Bold"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.mark_chat_unread_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded)),
        ],
      ),
      body: Column(
        children: [
            SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Uihelper.Customimage(imagurl: "Your Story.png"),
              SizedBox(width: 10,),
              Uihelper.Customimage(imagurl: "Story1.png"),
              SizedBox(width: 10,),
              Uihelper.Customimage(imagurl: "Avatar.png"),
              // Image.asset("assets/images/Story1.png"),
              // SizedBox(width: 5,),
              // Uihelper.Customimage(imagurl: "Story.png"),
              // ClipRRect(
              //   borderRadius:BorderRadius.circular(20),
              //   child: Uihelper.Customimage(imagurl: "Avatar.png"),
              // )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 20,),
              Uihelper.CustomText(text: "Your Story", fontsize: 10, context: context,fontweight: FontWeight.bold,fontfamily: "Bold"),
              SizedBox(width: 10,),
              Uihelper.CustomText(text: "Muhammad", fontsize: 10, context: context,fontweight: FontWeight.bold,fontfamily: "Bold"),
              SizedBox(width: 10,),
              Uihelper.CustomText(text: "Sufyan", fontsize: 10, context: context,fontweight: FontWeight.bold,fontfamily: "Bold"),
            ],
          ),
          Divider(
            color: Color(0xFFADB5BD),
          ),
          ListView.builder(itemBuilder: (context,index){
            return ListTile(
              leading: Uihelper.Customimage(imagurl: arrchats[index]["img"].toString()),
              title: Uihelper.CustomText(text: arrchats[index]["Name"].toString(), fontsize: 14, context: context),
              subtitle: Uihelper.CustomText(text: arrchats[index]["Lastseen"].toString(), context: context, fontsize: 10),
            );
          })
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text("Chat Screen"),
      //     ],
      //   ),
      // ),
    );
  }
}