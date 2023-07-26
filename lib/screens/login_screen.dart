import 'package:flutter/material.dart';
import 'package:flutternetworking/screens/home_screen.dart';
import '../widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Scaffold(
          appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Products'),
      ),
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.bottomLeft,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Container(
                  height: constraints.maxHeight * 1 / 2,
                  width: constraints.maxWidth,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(200),
                    ),
                    color: Colors.orange,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: constraints.maxWidth * 0.82,
                  height: constraints.maxHeight * 0.84,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 4,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: constraints.maxWidth * 0.38,
                        height: constraints.maxHeight * 0.16,
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(120),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 8,
                          top: 15,
                        ),
                        child: Text(
                          'Welcome!',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 10,
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFieldWidget(
                          'Username', 'Your Name', usernameController),
                      TextFieldWidget('Password', 'Password', passwordController),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {Navigator.of(context)
                                  .pushNamed(HomeScreen.routeName);},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            elevation: 0,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                              top: 15,
                              bottom: 10,
                              left: 20,
                              right: 20,
                            ),
                            child: Text(
                              'LOG IN',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Center(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
        
                            },
                            child: const Text(
                              'Create Account',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
