import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var pwdlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/Images/coffeelogo.jpg"),
            const Text(
              "Welcome back",
              style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  (Icons.mail),
                  color: Colors.grey,
                ),
                hintText: "Email/Phone Number",
              ),
            ),
            TextFormField(
              controller: pwdlController,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  (Icons.lock),
                  color: Colors.grey,
                ),
                hintText: "Password",
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (v) {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  side: MaterialStateBorderSide.resolveWith(
                    (states) =>
                        BorderSide(width: 1.0, color: Colors.pinkAccent),
                  ),
                ),
                const Text(
                  "Remember me",
                  style: TextStyle(color: Colors.pinkAccent),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Froget Password?",
                      style: TextStyle(color: Colors.pinkAccent),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
                alignment: Alignment.center, child: Text("Or Login with")),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/Images/facebooklogo.jpg",
                  height: 40,
                ),
                Image.asset(
                "assets/Images/insterlogo.jpg",
                  height: 40,
                ),
                Image.asset(
                  "assets/Images/linkdinlogo.jpg",
                  height: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account?"),
                Text(
                  "Sign up",
                  style: TextStyle(color: Colors.pinkAccent),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}