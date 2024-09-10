import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/pages/home/home_page.dart';
import 'package:sanberappflutter/routes/app_routes_named.dart';
import 'package:sanberappflutter/widget/custom_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  Future<void> _registerWithEmailAndPassword(BuildContext context) async {
    if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password dan Konfirmasi Password tidak cocok'),
        ),
      );
      return;
    }

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Pendaftaran berhasil'),
        ),
      );

      Get.offAllNamed(AppRoutesNamed.homePage);
    } on FirebaseAuthException catch (e) {
      String message = 'Terjadi kesalahan';
      if (e.code == 'weak-password') {
        message = 'Password terlalu lemah';
      } else if (e.code == 'email-already-in-use') {
        message = 'Email sudah terdaftar';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Center(
                child: Container(
                  width: 352,
                  height: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/image_news_register.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              CustomTextFormField(
                label: 'Masukkan Email',
                controller: _emailController,
              ),
              CustomTextFormField(
                label: 'Password',
                controller: _passwordController,
                obscureText: true,
              ),
              CustomTextFormField(
                label: 'Konfirmasi Password',
                controller: _confirmPasswordController,
                obscureText: true,
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: Color(0xff3498DB)),
                  onPressed: () {
                    _registerWithEmailAndPassword(context);
                  },
                  child: Text(
                    'Mendaftar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xffC0C0C0),
                      height: 3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Atau daftar menggunakan',
                      style: TextStyle(color: Color(0xffc0c0c0)),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: Color(0xffC0C0C0),
                    height: 3,
                  )),
                ],
              ),
              SizedBox(height: 40),
              Material(
                color: Colors.white,
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        surfaceTintColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icon/icon_google.png'))),
                        ),
                        Text(
                          'Google',
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox()
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 49),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah punya akun? silahkan '),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Kembali ke halaman login
                    },
                    child: Text(
                      'Masuk',
                      style: TextStyle(color: Color(0xff3498db)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
