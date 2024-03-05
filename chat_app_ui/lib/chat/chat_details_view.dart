import 'package:flutter/material.dart';

class ChatDetailsView extends StatelessWidget {
  const ChatDetailsView(
      {super.key, required this.imageUrl, required this.name});

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name),
      ),
    );
  }
}
