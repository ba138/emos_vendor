// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../GlobalColors/colors.dart';

class ClinicChatWidget extends StatefulWidget {
  const ClinicChatWidget({super.key});

  @override
  State createState() => ClinicChatWidgetState();
}

class ChatMessage {
  final String text;
  final bool isSender;

  ChatMessage({required this.text, required this.isSender});
}

class ClinicChatWidgetState extends State<ClinicChatWidget> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
        text: text,
        isSender: true); // You can modify this to determine sender/receiver.
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _buildMessage(ChatMessage message) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Container(
        alignment:
            message.isSender ? Alignment.centerRight : Alignment.centerLeft,
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: message.isSender
                ? AppColor.bgFillColor
                : AppColor.chatRecvColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(
            message.text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              return _buildMessage(_messages[index]);
            },
          ),
        ),
        const Divider(height: 1.0),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: _buildTextComposer(),
        ),
      ],
    );
  }

  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: const InputDecoration(
                  hintText: 'Type a message...',
                  hintStyle: TextStyle(
                    color: AppColor.chatRecvColor,
                  )),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.send,
              color: AppColor.bgFillColor,
            ),
            onPressed: () {
              if (_textController.text.isNotEmpty) {
                _handleSubmitted(_textController.text);
              }
            },
          ),
        ],
      ),
    );
  }
}
