import 'package:flutter/material.dart';
import 'package:minichat/components/my_button.dart';
import 'package:minichat/components/my_textfield.dart';

class LoginPage extends StatelessWidget {

  //email and pw controllers

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  //tap to go to register page

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  void login(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,),
            SizedBox(height: 50,),

            //welcome back message
            Text(
              "Welcome back. You've been missed!",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16.0,
              ),
            ),

            SizedBox(height: 25.0,),

            //email textfield
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),

            SizedBox(height: 10.0,),

            // pw textfield
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController,
            ),

            SizedBox(height: 25.0,),

            //login button
            MyButton(
              text: "Login",
              onTap: login,
            ),

            SizedBox(height: 25.0,),


            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member? ", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                GestureDetector(
                  onTap: onTap,
                    child: Text("Register now!!", style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),)),
              ],
            )

          ],
        ),
      ),
    );
  }
}
