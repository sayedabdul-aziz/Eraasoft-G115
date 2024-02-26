import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Flutter Buttons',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              InkWell(
                onTap: () {
                  debugPrint('clicked');
                },
                child: Container(
                  color: Colors.black,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // SizedBox vs Container
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: const Text('Click Here'),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      foregroundColor: Colors.black,
                      side: const BorderSide(
                        color: Colors.black,
                      )),
                  onPressed: () {},
                  child: const Text('Click Here'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: const Text('Click Here')),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                  color: Colors.red,
                  iconSize: 50,
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_rounded)),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                elevation: 0,
                child: const Icon(Icons.edit),
              )
            ],
          ),
        ),
      ),
    );
  }
}
