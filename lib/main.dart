import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final _formLoginKepalaState = GlobalKey<FormState>();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor:  Colors.blue[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:
                Form(
                  key: _formLoginKepalaState,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset(
                        'assets/icons/Flutter.png', 
                        height: 200,
                        width: 200, 
                      ),
                    Text(
                      'Login Page',
                      style: GoogleFonts.bebasNeue(
                        fontSize: 50,
                      ),
                    ),
                    const Text(
                      'Selamat Datang Kembali',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 23.0),
                                child: 
                                TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              ),
                            ),
                        ),
                    SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: 
                            TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                            obscureText: true,
                          ),
                          ),
                        ),
                    ),
                    SizedBox(height: 20.0),
                      Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            // color: Color.fromARGB(255, 66, 80, 202),
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    SizedBox(height: 20.0),
                    TextButton(
                      onPressed: () {
                      },
                      child: Text('Forgot Password?'),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            // Implement Google login
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 20,
                            child: Icon(
                              Icons.g_translate,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        GestureDetector(
                          onTap: () {
                            // Implement Facebook login
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),                    
                  ]),
                ),
          ),
        ),
      ),
    );
  }
}
