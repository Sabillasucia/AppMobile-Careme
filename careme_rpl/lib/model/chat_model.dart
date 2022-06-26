import 'package:flutter/cupertino.dart';

class chatModel {
  String? id_chat;
  String? text_psikolog;
  String? text_char;

  chatModel({this.id_chat, this.text_psikolog, text_char});

  factory chatModel.fromMap(map) {
    return chatModel(
      id_chat: map('id_chat'),
      text_psikolog: map('text_psikolog'),
      text_char: map('text_char'),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id_chat': id_chat,
      'text_psikolog': text_psikolog,
      'text_char': text_char,
    };
  }
}


class ChatMessage{
  String? messageContent;
  String? messageType;

  ChatMessage({@required this.messageContent, @required this.messageType});
}

