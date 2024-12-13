import 'package:flutter/material.dart';
import 'package:wallet_wise_app/presentation/pages/home.dart';

class loginPage extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<loginPage> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text('Login'),
      ), */
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                    top: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _username,
                      decoration: InputDecoration(
                          labelText: 'username',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: _rememberMe,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value!;
                                    print(_rememberMe);
                                  });
                                }),
                            const Text('remember')
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Forgot Password?'),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      iconAlignment: IconAlignment.end,
                      icon: const Icon(Icons.login),
                      onPressed: () {
                        String username = _username.text;
                        String password = _password.text;
                        print(
                            'username: ' + username + ' password: ' + password);
                        // Si la autenticación es exitosa, navegas a otro lugar
                        Navigator.pushNamed(context, '/home');
                        /* if (username == 'admin' && password == 'password') {
                          print('Autenticacion exitosa!');
                        } else {
                          // Mostrar un mensaje de error
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Error'),
                              content: Text('Username or password incorrect.'),
                            ),
                          );
                        } */
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      label: Text('Login'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Sign in with'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row()
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
