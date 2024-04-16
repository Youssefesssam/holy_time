import 'package:flutter/material.dart';
import 'package:holy_time/ui/screens/homeScreen/homeScreenUsers.dart';
import '../../../../utilites/appAssets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key});

  static const String routeName = "registerScreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _birthdayController = TextEditingController();
  String _selectedGender = "male"; // Initial value for gender

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAssets.registerScreen1),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Text(
                "Register",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter your name",
                      suffixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter your email",
                      suffixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password",
                      suffixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      hintText: "Re-enter your password",
                      suffixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "Enter your address",
                      suffixIcon: const Icon(Icons.location_on),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _birthdayController,
                    readOnly: true,
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      ).then((pickedDate) {
                        if (pickedDate != null) {
                          _birthdayController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                        }
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Birth day",
                      hintText: "Select your birth day",
                      suffixIcon: Icon(Icons.cake),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      hintText: "Enter your phone number",
                      suffixIcon: const Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Talent",
                      hintText: "Enter your talent",
                      suffixIcon: const Icon(Icons.star),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    value: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Gender",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    items: [
                      DropdownMenuItem(
                        value: "male",
                        child: Text("Male"),
                      ),
                      DropdownMenuItem(
                        value: "female",
                        child: Text("Female"),
                      ),
                      DropdownMenuItem(
                        value: "other",
                        child: Text("Other"),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        HomeScreenUsers.routeName,
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.blue,
                      ),
                      child: Text(
                        "Create",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  DateFormat(String s) {}

}



