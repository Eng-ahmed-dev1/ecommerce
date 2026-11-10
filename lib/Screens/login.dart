import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final globalKey = GlobalKey<State>();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 99, 36, 137),
        centerTitle: true,
        title: Text(
          "Login Page",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 26),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          width: 400,
          height: 550,
          child: Form(
            key: globalKey,
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "Welcome Back User..!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Icon(
                  color: Colors.deepPurpleAccent,
                  Icons.person_outline_outlined,
                  size: 120,
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 390,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(90),
                        borderSide: BorderSide(
                          width: 2.0,
                          color: const Color.fromARGB(255, 255, 17, 0),
                        ),
                      ),
                      hintText: "Enter Your User Name",
                      label: Row(
                        // to make specific widget in column or row to take
                        //only the area which it want not the all screen
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.person, size: 20),
                          SizedBox(width: 8),
                          Text("User Name"),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 390,
                  child: TextFormField(
                    obscureText: showPassword,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: showPassword
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(90),
                        borderSide: BorderSide(
                          width: 2.0,
                          color: const Color.fromARGB(255, 255, 17, 0),
                        ),
                      ),
                      hintText: "Enter Your Password",
                      label: Row(
                        // to make specific widget in column or row to take
                        //only the area which it want not the all screen
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.lock, size: 20),
                          SizedBox(width: 8),
                          Text("Password"),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 0.1),
                    TextButton(
                      onPressed: () {
                        // put the navigator to the register page
                      },
                      child: Text(
                        "Reigster",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    // to make the button pressed
                    overlayColor: Colors.black.withValues(alpha: 0.2),
                  ),
                  onPressed: () {},
                  label: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
