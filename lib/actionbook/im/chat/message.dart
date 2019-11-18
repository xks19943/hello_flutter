import 'package:flutter/material.dart';
import './message_data.dart';
import './message_item.dart';

class Message extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MessageState();
  }
}


class MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (BuildContext context, int index) {
          return new MessageItem(messageData[index]);
        },
      ),
    );
  }
}