

import 'package:flutter/material.dart';
import 'package:testedit/shared/components/components.dart';




class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey=GlobalKey<FormState>();

  var isPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login' ,
                    style: TextStyle(
                      color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50 ,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTextFormField(
                    controller: emailController,
                    label: 'email address',
                    prefix: Icons.email,color: Colors.orangeAccent,
                    type: TextInputType.emailAddress,
                    validate: (value)
                      {
                        if (value.isEmpty)
                          {
                            return 'email address must not be empty';
                          }
                      }
                  ),
                  SizedBox(
                    height: 20,
                  ),
              DefaultTextFormField(
                  controller: passwordController,
                  label: 'password',
                  prefix: Icons.lock ,color: Colors.orangeAccent,
                  suffix: isPassword ?  Icons.visibility : Icons.visibility_off,
                  isPassword: isPassword,
                  suffixPressed: ()
                  {
                    setState(()
                    {
                      isPassword = !isPassword;
                    });
                  },
                  type: TextInputType.visiblePassword,
                  validate: (value)
                  {
                    if (value.isEmpty)
                    {
                      return 'password  must not be empty';
                    }
                  }
              ),
                  SizedBox(
                    height: 20.0,
                  ),
                 Defaultbutton(
                    text: 'ReGIster',
                    function: ()
                    {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
