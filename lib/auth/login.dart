import 'package:flutter/material.dart';
import 'package:mtr/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _logo(),
              const SizedBox(height: 20),
              _title(),
              const SizedBox(height: 20),
              _inputField("Нэвтрэх нэр", usernameController, Icons.person),
              const SizedBox(height: 20),
              _inputField("Нууц үг", passwordController, Icons.lock,
                  isPassword: true),
              const SizedBox(height: 20),
              _extraOptions(),
              const SizedBox(height: 20),
              _loginButton(),
              const SizedBox(height: 10),
              _registerButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Colors.blueAccent,
      child: const Icon(Icons.sports_mma,
          color: Colors.white, size: 50), // Replace with your logo
    );
  }

  Widget _title() {
    return const Text(
      "MTR",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget _inputField(
      String hintText, TextEditingController controller, IconData icon,
      {bool isPassword = false}) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[200],
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(Icons.visibility_off, color: Colors.grey),
                onPressed: () {
                  // Handle show/hide password logic
                },
              )
            : null,
      ),
    );
  }

  Widget _extraOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: rememberMe,
              onChanged: (value) {
                setState(() {
                  rememberMe = value ?? false;
                });
              },
            ),
            const Text("Сануулах"),
          ],
        ),
        GestureDetector(
          onTap: () {
            // Handle "Forgot Password" action
          },
          child: const Text(
            "Нууц үг сэргээх",
            style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MainPage()),
        );
        // Handle login logic
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Нэвтрэх",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Widget _registerButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[400],
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Бүртгүүлэх",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:mtr/pages/home.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   TextEditingController usernameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//           colors: [Colors.blue, Colors.red],
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: _page(),
//       ),
//     );
//   }

//   Widget _page() {
//     return Padding(
//       padding: const EdgeInsets.all(32.0),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _icon(),
//             const SizedBox(height: 50),
//             _inputField("Username", usernameController),
//             const SizedBox(height: 20),
//             _inputField("Password", passwordController, isPassword: true),
//             const SizedBox(height: 50),
//             _loginBtn(),
//             const SizedBox(height: 20),
//             _extraText(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _icon() {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.white, width: 2),
//         shape: BoxShape.circle,
//       ),
//       child: const Icon(Icons.person, color: Colors.white, size: 120),
//     );
//   }

//   Widget _inputField(String hintText, TextEditingController controller,
//       {isPassword = false}) {
//     var border = OutlineInputBorder(
//       borderRadius: BorderRadius.circular(18),
//       borderSide: const BorderSide(color: Colors.white),
//     );

//     return TextField(
//       style: const TextStyle(color: Colors.white),
//       controller: controller,
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: const TextStyle(color: Colors.white),
//         enabledBorder: border,
//         focusedBorder: border,
//       ),
//       obscureText: isPassword,
//     );
//   }

//   Widget _loginBtn() {
//     return ElevatedButton(
//       onPressed: () {
//         // Navigate to MainPage after successful login
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => HomePage()),
//         );
//       },
//       child: const SizedBox(
//         width: double.infinity,
//         child: Text(
//           "Нэвтрэх",
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//       style: ElevatedButton.styleFrom(
//         shape: const StadiumBorder(),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.blue,
//         padding: const EdgeInsets.symmetric(vertical: 16),
//       ),
//     );
//   }

//   Widget _extraText() {
//     return const Text(
//       "Can't access to your account?",
//       textAlign: TextAlign.center,
//       style: TextStyle(fontSize: 16, color: Colors.white),
//     );
//   }
// }
