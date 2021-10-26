import 'package:flutter/material.dart';
import 'package:try1/models/chatUsersModel.dart';
import 'package:try1/widgets/conversationList.dart';

class ChatPage extends StatefulWidget {
  get chatUsers => null;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(messageText: "Jane Russel", secondaryText: "Awesome Setup", imageURL: "images/userImage1.jpeg", time: "Now", name: ''),
    ChatUsers(messageText: "Glady's Murphy", secondaryText: "That's Great", imageURL: "images/userImage2.jpeg", time: "Yesterday", name: ''),
    ChatUsers(messageText: "Jorge Henry", secondaryText: "Hey where are you?", imageURL: "images/userImage3.jpeg", time: "31 Mar", name: ''),
    ChatUsers(messageText: "Philip Fox", secondaryText: "Busy! Call me in 20 mins", imageURL: "images/userImage4.jpeg", time: "28 Mar", name: ''),
    ChatUsers(messageText: "Debra Hawkins", secondaryText: "Thankyou, It's awesome", imageURL: "images/userImage5.jpeg", time: "23 Mar", name: ''),
    ChatUsers(messageText: "Jacob Pena", secondaryText: "will update you in evening", imageURL: "images/userImage6.jpeg", time: "17 Mar", name: ''),
    ChatUsers(messageText: "Andrey Jones", secondaryText: "Can you please share the file?", imageURL: "images/userImage7.jpeg", time: "24 Feb", name: ''),
    ChatUsers(messageText: "John Wick", secondaryText: "How are you?", imageURL: "images/userImage8.jpeg", time: "18 Feb", name: ''),
  ];
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListView.builder(
                shrinkWrap: true,
                itemCount: chatUsers==null ? 0: chatUsers.length,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return ConversationList(
                    name: chatUsers[index].name,
                    messageText: chatUsers[index].messageText,
                    imageUrl: chatUsers[index].imageURL,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3)?true:false,
                  );
                },
              ),      
        Padding(
        padding: EdgeInsets.only(top: 16,left: 16,right: 16),
    child: TextField(
    decoration: InputDecoration(
    hintText: "Search...",
    hintStyle: TextStyle(color: Colors.grey.shade600),
    prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
    filled: true,
    fillColor: Colors.grey.shade100,
    contentPadding: EdgeInsets.all(8),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(
    color: Colors.grey.shade100
    )
    ),
    ),
    ),
        ),
              SafeArea(
        child: Padding(
            padding: EdgeInsets.only(left: 16,right: 16,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Text("Conversations",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          Container(
            padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue[50],
            ),
            child: Row(
              children: <Widget>[
                Icon(Icons.add,color: Colors.blue,size: 20,),
                SizedBox(width: 2,),
                Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ],
        ),
      ),
    ),
    ],
    ),
      ),
    );
  }
}