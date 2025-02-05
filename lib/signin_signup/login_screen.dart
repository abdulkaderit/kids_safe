
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employe"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Welcome Back",
              style: GoogleFonts.poppins(
                  fontSize: 10,fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name"
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              obscureText: true,
              controller: ageController,
              decoration: InputDecoration(
                  labelText: "Age",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: salaryController,
              decoration: InputDecoration(
                  labelText: "Salary"
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(onPressed: (){},
                child: Text("Add Employe"),
            ),
          ],
        ),
      ),
    );
  }
}
