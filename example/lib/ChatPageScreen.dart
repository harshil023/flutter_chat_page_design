import 'package:flutter/material.dart';
import 'package:flutter_chat_page_design/flutter_chat.dart';
import 'package:flutter_chat_page_design/model/chatmodel.dart';

import 'customdata/customdata.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  CustomData customData =  CustomData();
  List<ChatModel> chatList = [];

  @override
  void initState() {

    super.initState();
    chatList = customData.setData();
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
