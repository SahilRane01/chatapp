import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  void register(){

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
              "Let's create a account for you!",
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

            SizedBox(height: 10.0,),

            //confirm password

            MyTextField(
              hintText: "Confirm Password",
              obscureText: true,
              controller: _confirmPwController,
            ),



            SizedBox(height: 25.0,),

            //login button
            MyButton(
              text: "Register",
              onTap: register,
            ),

            SizedBox(height: 25.0,),


            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                GestureDetector(onTap: onTap,child: Text("Login now!", style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),)),
              ],
            )

          ],
        ),
      ),
    );
  }
}
