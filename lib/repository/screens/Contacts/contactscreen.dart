import 'package:chatuiapp/domain/constants/appcolors.dart';
import 'package:chatuiapp/repository/screens/uihelper.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  // const ContactScreen({super.key});
  TextEditingController searchcontroller = TextEditingController();
  var arrcontatcts = [
    {
      "img":"Haris.png",
      "Name":"Haris Arif",
      "Lastseen":"Last seen yesterday",
    },
    {
      "img":"Usaid.png",
      "Name":"Usaid Iqbal",
      "Lastseen":"Online",
    },
    {
      "img":"Sami.png",
      "Name":"Sami Shoaib",
      "Lastseen":"Last seen 2 days ago",
    },
    // {
    //   "img":"Haris.png",
    //   "Name":"Haris Arif",
    //   "Lastseen":"Last seen 2 days ago",
    // },
    {
      "img":"Hassaan.png",
      "Name":"Hassaan Aslam",
      "Lastseen":"Last seen a week ago",
    }
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
         backgroundColor: Theme.of(context).brightness==Brightness.dark ? Appcolors.scaffolddark:Appcolors.scaffoldlight,
        title: Uihelper.CustomText(text: "Contacts", fontsize: 18, context: context),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),

        ],
      ),
      body:Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
        Uihelper.CustomTextField(controller:searchcontroller , text:"Search" , textinputtype: TextInputType.name, context: context,icondata:Icons.search),
        SizedBox(height: 10,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListView.separated(itemBuilder: (context,index){
              
              return ListTile(
                
                leading: 
                ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: 
                Uihelper.Customimage(imagurl: arrcontatcts[index]["img"].toString())),
                title: Uihelper.CustomText(text: arrcontatcts[index]["Name"].toString(), fontsize: 14, context: context,fontweight: FontWeight.w600,),
                subtitle: Uihelper.CustomText(text: arrcontatcts[index]["Lastseen"].toString(), fontsize: 12, context: context,color: Color(0xFFADB5BD)),
                // tileColor: Colors.grey,
              );
              
            },
            itemCount: arrcontatcts.length,
            separatorBuilder: (BuildContext context, int index) { return SizedBox(height:  10,);}
            ),
          ),
        )
          ],
        ),
      ),
    );
  }
}