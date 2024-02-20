import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          leading: const Icon(Icons.menu),
          centerTitle: true,
          title: const Text('My First App'),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notification_add)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
        body: const Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sayed Abdul-Aziz',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              // social
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.snapchat_sharp,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.telegram_rounded,
                    color: Colors.blueAccent,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
