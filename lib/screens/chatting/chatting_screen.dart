import 'package:flutter/material.dart';
import 'package:flutter_carrot_app/models/chat_message.dart';
import 'package:flutter_carrot_app/screens/chatting/compponents/chat_container.dart';
import 'package:flutter_carrot_app/screens/components/appbar_preferred_size.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(chatMessageList.length,
            (index) => ChatContainer(chatMessage: chatMessageList[index])),
      ),
    );
  }
}
