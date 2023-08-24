import 'package:flutter/material.dart';
import 'package:flutter_chat_page_design/flutter_chat.dart';
import 'package:flutter_chat_page_design/model/chatmodel.dart';

import 'customdata/customdata.dart';

class ChatPageScreen extends StatefulWidget {
  const ChatPageScreen({super.key});

  @override
  State<ChatPageScreen> createState() => _ChatPageScreenState();
}

class _ChatPageScreenState extends State<ChatPageScreen> {
  CustomData customData = new CustomData();
  List<ChatModel> chatList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chatList = customData.setData();
    print("initState" + chatList.elementAt(0).message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ChatListview(
        chatList: chatList,
        isDategroup: true,
        isReverse: true,
        gropByTextsize: 12,
        bubbleBorder: 15,

      )),
    );
  }
}
