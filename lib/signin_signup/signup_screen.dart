import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/dashbord_screen.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: "Email"
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              //ToDo: Add signup logic
              Navigator.push(context,
                  MaterialPageRoute(builder: (_)=> DashbordScreen())
              );
            },
              child: Text("SignUp"),
            ),
            TextButton(onPressed: (){},
                child: Text("Already have an account? Login"),
            ),
            // if (errorMessage != null) ...[
            //   SizedBox(height: 10),
            //   Text(errorMessage!,
            //       style: TextStyle(color: Colors.red)),
            // ]
          ],
        ),
      ),
    );
  }
}
