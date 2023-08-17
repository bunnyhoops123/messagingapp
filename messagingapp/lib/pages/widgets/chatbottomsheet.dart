import 'package:flutter/material.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Icon(Icons.file_upload_outlined),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Icon(Icons.emoji_emotions_outlined),
          ),
          Container(
            width: 270,
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Type something', border: InputBorder.none),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: Icon(
              Icons.send,
              color: Color(0xFF113953),
            ),
          ),
        ],
      ),
    );
  }
}
