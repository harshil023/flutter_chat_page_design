library flutter_chat_ui;

import 'package:flutter/material.dart';
import 'package:flutter_chat_page_design/widget/chatbubble.dart';

import 'model/chatmodel.dart';

class ChatListview extends StatelessWidget {
  const ChatListview(
      {super.key,
      required this.chatList,
      required this.isDategroup,
      this.gropByTextsize = 12,
      this.bubbleBorder = 15,
      this.senderBgColor = Colors.blue,
      this.receiverBgColor = Colors.grey,
      this.senderTextColor = Colors.white,
      this.groupByTextColor = Colors.white,
      this.receiverTextColor = Colors.black,
      this.isReverse = true});

  final List<ChatModel> chatList;
  final bool isDategroup;
  final double gropByTextsize;
  final double bubbleBorder;

  final Color senderBgColor,
      receiverBgColor,
      senderTextColor,
      groupByTextColor,
      receiverTextColor;
  final bool isReverse;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0),
        reverse: isReverse,
        itemCount: chatList.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext buildContext, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                visible: isDategroup
                    ? index != 0
                        ? chatList[index].date == chatList[index - 1].date
                            ? false
                            : true
                        : true
                    : false,
                child: Text(
                  chatList[index].date,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: gropByTextsize,
                      fontWeight: FontWeight.bold,
                      color: groupByTextColor),
                ),
              ),
              ChatBubble(
                message: chatList[index].message.toString(),
                isSender: chatList[index].isSender,
                bubbleBorder: bubbleBorder,
                senderBgColor: senderBgColor,
                receiverBgColor: receiverBgColor,
                senderTextColor: senderTextColor,
                receiverTextColor: receiverTextColor,
              ),
            ],
          );
        });
  }
}
