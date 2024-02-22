import 'package:basic_widgets_2_22/widgets/custom_btn.dart';
import 'package:basic_widgets_2_22/widgets/profile_header.dart';
import 'package:basic_widgets_2_22/widgets/tile_item.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        centerTitle: true,
        title: const Text(
          'Doctor Profile',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Home Header
              const ProfileHeader(),
              const SizedBox(
                height: 20,
              ),
              // about
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Former Head of Dentist at Al-Azhar University'),
                ],
              ),

              // contact
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent.withOpacity(.2)),
                child: const Column(
                  children: [
                    ListTileItem(
                      text: 'Cairo Hospital',
                      icon: Icons.local_hospital_rounded,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    ListTileItem(
                      text: '10 : 12',
                      icon: Icons.watch_later_outlined,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    ListTileItem(
                      text: 'Nasr City, Cairo',
                      icon: Icons.location_on,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent.withOpacity(.2)),
                child: const Column(
                  children: [
                    ListTileItem(
                      text: 'ahmed@gmail.com',
                      icon: Icons.email_rounded,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    ListTileItem(
                      text: '+201524648778',
                      icon: Icons.call,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    ListTileItem(
                      text: '+201524648778',
                      icon: Icons.call,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              CustomButton(
                text: '💬 Chat With Dr Ahmed Salem',
                color: Colors.green,
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'Book an Appointment',
                color: Colors.indigo,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
