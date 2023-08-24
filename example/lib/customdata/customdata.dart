
import 'package:flutter_chat_page_design/model/chatmodel.dart';

class CustomData {
  List chatList = [
    {'message': 'Hello', 'isSender': false, 'date': '22-08-2023'},
    {'message': 'Hi', 'isSender': true, 'date': '22-08-2023'},
    {'message': 'How are you?', 'isSender': true, 'date': '22-08-2023'},
    {'message': 'Good', 'isSender': false, 'date': '23-08-2023'},
    {'message': 'Nice', 'isSender': true, 'date': '23-08-2023'},
    {'message': 'Yupp', 'isSender': false, 'date': '23-08-2023'},
    {'message': 'any thing else', 'isSender': true, 'date': '24-08-2023'},
    {'message': 'No', 'isSender': false, 'date': '24-08-2023'},
    {'message': 'Really', 'isSender': true, 'date': '24-08-2023'},
    {'message': 'I cannot bealive', 'isSender': true, 'date': '24-08-2023'},
    {'message': 'No', 'isSender': false, 'date': '24-08-2023'},
    {'message': 'Okay', 'isSender': true, 'date': '24-08-2023'},
    {'message': 'where are you', 'isSender': true, 'date': '24-08-2023'}
  ];
  List<ChatModel> chatListnew = [];
  ChatModel chatModel = new ChatModel();

  List<ChatModel> setData() {
    for(int i =0;i<chatList.length;i++){
      ChatModel chatModel = new ChatModel();
      chatModel.message=chatList.elementAt(i)['message'];
      chatModel.isSender=chatList.elementAt(i)['isSender'];
      chatModel.date=chatList.elementAt(i)['date'];
      chatListnew.add(chatModel);
    }

    return chatListnew.reversed.toList();
  }
}
