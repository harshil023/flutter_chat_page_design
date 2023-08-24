import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  ChatBubble(
      {
      required this.message,
      required this.isSender,
      required this.bubbleBorder,
      required this.receiverBgColor,
      required this.senderBgColor,
      required this.receiverTextColor,
      required this.senderTextColor});
  final String message;
  final bool isSender;
  final double bubbleBorder;
  final Color receiverBgColor, receiverTextColor;
  final Color senderBgColor, senderTextColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // asymmetric padding
      padding: EdgeInsets.fromLTRB(
        isSender ? 64.0 : 16.0,
        4,
        isSender ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        // align the child within the container
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          // chat bubble decoration
          decoration: BoxDecoration(
            color: isSender ? senderBgColor : receiverBgColor,
            borderRadius: BorderRadius.circular(bubbleBorder),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              message,
              style: TextStyle(
                  color: isSender ? senderTextColor : receiverTextColor),
            ),
          ),
        ),
      ),
    );
  }
}
