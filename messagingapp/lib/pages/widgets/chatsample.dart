import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ChatSample extends StatefulWidget {
  const ChatSample({super.key});

  @override
  State<ChatSample> createState() => _ChatSampleState();
}

class _ChatSampleState extends State<ChatSample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding:
                  EdgeInsets.only(left: 23, bottom: 13, top: 20, right: 20),
              decoration: BoxDecoration(color: Color(0xFFE1E2E1), boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(3, 3),
                    color: Colors.grey.withOpacity(0.5))
              ]),
              child: Text(
                'Hey, how are you?',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 50),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, bottom: 20, top: 10, right: 20),
                decoration: BoxDecoration(color: Color(0xFF113953), boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(3, 3),
                      color: Colors.grey.withOpacity(0.5))
                ]),
                child: Text(
                  'Hey, I am doing just fine.  I hope you are as well.  When can we arrange a zoom meeting reagrding the deposition of United States Treasury?',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
