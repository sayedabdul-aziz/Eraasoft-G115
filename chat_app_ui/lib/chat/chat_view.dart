import 'package:chat_app_ui/colors.dart';
import 'package:chat_app_ui/chat/user_model.dart';
import 'package:chat_app_ui/chat/widgets/fav_contacts.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          'Chats',
          style: TextStyle(color: AppColors.white),
        ),
        actions: [
          IconButton(
              color: AppColors.white,
              onPressed: () {},
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Column(
        children: [
          // fav contacts
          const FavouriteContacts(),
          // chats
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        chats[index].name,
                        style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(chats[index].lastMsg,
                          style: TextStyle(
                            color: AppColors.black,
                          )),
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(chats[index].image),
                      ),
                      trailing: Text(chats[index].time),
                      onTap: () {},
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox();
                  },
                  itemCount: chats.length),
            ),
          )
        ],
      ),
    );
  }
}
