import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
        leading: const Icon(Icons.person),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      // floatingActionButton:
      //     FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // rounded with radius /// as a circle

              // ClipRRect(
              //   borderRadius: BorderRadius.circular(20),
              //   child: Image.network(
              //     'https://www.usnews.com/object/image/0000018c-5eff-dc6c-aded-ffff3d4a0000/https-cars-dms-usnews-com-static-uploads-images-auto-custom-15417-original-2024-acura-integra-type-s-angular-front-1.jpg?update-time=1695055174000&size=responsiveGallery',
              //     width: double.infinity,
              //     height: 300,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              const CircleAvatar(
                radius: 120,
                backgroundColor: Colors.white38,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/55.jpg'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Dr. Ahmed Tamer',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Dentist',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
                indent: 40,
                endIndent: 40,
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                width: double.infinity,
                height: 100,
                // padding: ,
                // margin: const EdgeInsets.all(20),

                decoration: const BoxDecoration(
                  color: Colors.black,
                  // gradient: LinearGradient(
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //     stops: [
                  //       .4,
                  //       1.5
                  //     ],
                  //     colors: [
                  //       Colors.black,
                  //       Colors.red,
                  //     ]),
                  // border: Border.all(color: Colors.green, width: 4),
                  // shape: BoxShape.circle,
                  // image: DecorationImage(image: AssetImage('assets/55.jpg'))
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black45,
                  //     offset: Offset(5, 5),
                  //     spreadRadius: 3,
                  //     blurRadius: 10,
                  //   )
                  // ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Row(
                    children: [
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '+20215545895',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.email_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'sayed@gmail.com',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
