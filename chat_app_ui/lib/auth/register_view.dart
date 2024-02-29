import 'package:chat_app_ui/auth/login_view.dart';
import 'package:chat_app_ui/auth/widgets/custom_button.dart';
import 'package:chat_app_ui/auth/widgets/custom_text_field.dart';
import 'package:chat_app_ui/chat/chat_view.dart';
import 'package:chat_app_ui/colors.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isNotVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // LOGO
                const CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/logo.jpg'),
                ),
                Text(
                  'Create A New Account',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black),
                ),
                const SizedBox(
                  height: 30,
                ),
                // name
                const CustomTextFormField(
                    label: 'Name', prefexIcon: Icons.person),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextFormField(
                    label: 'Email', prefexIcon: Icons.email),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  label: 'Password',
                  obscureText: isNotVisable,
                  prefexIcon: Icons.lock,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isNotVisable = !isNotVisable;
                        });
                      },
                      icon: Icon(
                        (isNotVisable)
                            ? Icons.visibility_off
                            : Icons.remove_red_eye_rounded,
                        color: AppColors.primary,
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Register',
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const ChatView(),
                    ));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already I have an account'),
                    TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: AppColors.primary),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ));
                        },
                        child: const Text('login!'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
