import 'package:chatuiapp/domain/constants/appcolors.dart';
import 'package:chatuiapp/repository/screens/uihelper.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  // const ChatsScreen({super.key});
  TextEditingController searchcontroller = TextEditingController();
  var arrchats =[
{
      "img":"Haris.png",
      "Name":"Haris Arif",
      "msg":"Good Morning, did you sleep yesterday?",
      "date":"Today",
      "msgcount":"1"
    },
    {
      "img":"Usaid.png",
      "Name":"Usaid Iqbal",
      "msg":"Hey Brother!!! How are you?",
      "date":"17/6",
      "msgcount":"0"
    },
    {
      "img":"Sami.png",
      "Name":"Sami Shoaib",
      "msg":"Hi!!! Whats the plan of tonight?",
      "date":"Today",
      "msgcount":"1"
    },
    // {
    //   "img":"Haris.png",
    //   "Name":"Haris Arif",
    //   "Lastseen":"Last seen 2 days ago",
    // },
    {
      "img":"Hassaan.png",
      "Name":"Hassaan Aslam",
      "msg":"Hi!!! Wanna have some chat?",
      "date":"Yesterday",
      "msgcount":"1"
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
          SizedBox(
            height: 20,
          ),
          Uihelper.CustomTextField(controller: searchcontroller,context: context,text: "Search",textinputtype: TextInputType.name, icondata: Icons.search),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListTile(
                  leading: Uihelper.Customimage(imagurl: arrchats[index]["img"].toString()),
                  title: Uihelper.CustomText(text: arrchats[index]["Name"].toString(), fontsize: 14, context: context),
                  subtitle: Uihelper.CustomText(text: arrchats[index]["msg"].toString(), context: context, fontsize: 12,color: Color(0xFFADB5BD)),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Uihelper.CustomText(text: arrchats[index]["date"].toString(), fontsize: 10, context: context,color: Color(0xFFA4A4A4)),
                      SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xFFD2D5F9),
                        radius: 12,
                        child:Uihelper.CustomText(text: arrchats[index]["msgcount"].toString(), fontsize:10, context: context) ,
                      )
                    ],
                  ),
                ),
              );
            },itemCount: arrchats.length,),
          )
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