import 'package:flutter/material.dart';
import 'package:train_ez/pages/infopage.dart';

void navigateToPersonal(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PersonalInfoPage(),
    ),
  );
}

class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return  Scaffold(
    //   body: Center(
    //     child: Padding(
    //       padding: EdgeInsets.all(16.0),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.stretch,
    //         children: [

    //           TextField(
    //             decoration: InputDecoration(
    //               labelText: 'Email',
    //               border: OutlineInputBorder(),
    //             ),
    //           ),
    //           SizedBox(height: 20,),

              

    //           TextField(
    //             obscureText: true,
    //             decoration: InputDecoration(
    //               labelText: 'Password',
    //               border: OutlineInputBorder()
    //             ),
    //           ),
    //           SizedBox(height: 20,),

    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //               ElevatedButton(
    //                 onPressed: (){navigateToLoginSignup(context);},
    //                 child: Text('Login')
    //               ),
              

    //               ElevatedButton(
    //                 onPressed: (){
    //                   navigateToLoginSignup(context);
    //                 },
    //                 child: Text('Signup')
    //               ),
    //             ],
    //           )
    //         ],
    //       ),
    //       ),
    //   ),
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor:const Color.fromARGB(1, 255, 255, 255),
      // ),
      home: const AndroidCompact2(),
    );
  }
}

class AndroidCompact2 extends StatelessWidget {
  const AndroidCompact2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 20),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFE924A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Image.asset("assets/LoginVector.png", height: 150),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          _buildTextField(emailController, 'Enter your email', false),
          const SizedBox(height: 16),
          const Text(
            'Password',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          _buildTextField(passwordController, 'Enter your password', true),
          const SizedBox(height: 20),
          _buildLoginButtons(context),
        ],
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hintText, bool obscureText) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
      ),
    );
  }

  Widget _buildLoginButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Implement login logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            child: const Text('Login', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              navigateToPersonal(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            child: const Text('Sign Up', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          ),
        ),
      ],
    );




  }
}