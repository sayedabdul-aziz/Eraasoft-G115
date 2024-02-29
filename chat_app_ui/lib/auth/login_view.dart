import 'package:chat_app_ui/auth/register_view.dart';
import 'package:chat_app_ui/auth/widgets/custom_button.dart';
import 'package:chat_app_ui/auth/widgets/custom_text_field.dart';
import 'package:chat_app_ui/chat/chat_view.dart';
import 'package:chat_app_ui/colors.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isNotVisable = true;

  final formKey = GlobalKey<FormState>();

  //1) Wrap Column with Form (add key)
  //2) add your validation using validator inside TextFormField
  //3) check Validation inside button using formKey
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // LOGO
                  const CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('assets/logo.jpg'),
                  ),
                  Text(
                    'Login To Your Account',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // name

                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(
                    label: 'Email',
                    prefexIcon: Icons.email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'PLease Enter Your Email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormField(
                    label: 'Password',
                    obscureText: isNotVisable,
                    prefexIcon: Icons.lock,
                    validator: (value) {
                      if (value!.length < 8) {
                        return 'PLease Enter Your Password';
                      }
                      return null;
                    },
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
                    text: 'LOGIN',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const ChatView(),
                        ));
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('I haven\'t an account'),
                      TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: AppColors.primary),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const RegisterView(),
                            ));
                          },
                          child: const Text('Create one!'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
