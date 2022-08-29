import 'package:flutter/material.dart';
import 'package:form/main.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "PAINT",
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              // appBar: AppBar(title: const Text('PAINT'), backgroundColor: const Color.fromRGBO(255, 204, 3, 100)),
              body: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/Background.png"),
                    fit: BoxFit.fitWidth,
                  )),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: const [
                          Logo(),
                          PageTitle(),
                          MyForm(),
                          Divider(),
                          SocialMediaLogin(),
                          Toggle(),
                          SubmitButton(),
                          SignIn()
                        ],
                      ),
                    ),
                  ))),
        ));
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              // Use the MdiIcons class for the IconData
              icon: const Icon(MdiIcons.arrowLeft),
              onPressed: () {
                // Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LandingPage()));
              },
            ),
            Image.asset("assets/Logo.png")
          ],
        ));
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      child: const Text("Sign up",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // String _name = "";
  // String _email = "";
  // String _password = "";
  // String _cpassword = "";

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildName() {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      child: TextFormField(
        decoration: const InputDecoration(
            hintText: "Enter your name here",
            contentPadding: EdgeInsets.only(
                top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)))),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your name';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildEmail() {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      child: TextFormField(
        decoration: const InputDecoration(
            hintText: 'Enter your email here',
            contentPadding: EdgeInsets.only(
                top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)))),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildPassword() {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      child: TextFormField(
        decoration: const InputDecoration(
            hintText: 'Enter your password here',
            contentPadding: EdgeInsets.only(
                top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)))),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildCPassword() {
    return Container(
        margin: const EdgeInsets.only(top: 15.0),
        child: TextFormField(
          decoration: const InputDecoration(
              hintText: 'Confirm your password here',
              contentPadding: EdgeInsets.only(
                  top: 10.0, left: 20.0, bottom: 10.0, right: 20.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)))),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: const EdgeInsets.only(top: 20.0),
      child: Form(
          key: _formkey,
          child: Column(
            children: [
              _buildName(),
              _buildEmail(),
              _buildPassword(),
              _buildCPassword()
            ],
          )),
    );
  }
}

class Divider extends StatelessWidget {
  const Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("______________",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 115, 115, 115),
                    )),
                Text("   OR   ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 115, 115, 115),
                    )),
                Text("______________",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 115, 115, 115),
                    )),
              ],
            )
          ],
        ));
  }
}

class SocialMediaLogin extends StatelessWidget {
  const SocialMediaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const Text("Sign up using social media",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  // Use the MdiIcons class for the IconData
                  color: const Color.fromARGB(255, 237, 165, 31),
                  icon: const Icon(MdiIcons.google),
                  onPressed: () {
                    // print('Google');
                  },
                ),
                IconButton(
                  // Use the MdiIcons class for the IconData
                  color: const Color.fromARGB(255, 237, 165, 31),
                  icon: const Icon(MdiIcons.facebook),
                  onPressed: () {
                    // print('Facebook');
                  },
                ),
                IconButton(
                  // Use the MdiIcons class for the IconData
                  color: const Color.fromARGB(255, 237, 165, 31),
                  icon: const Icon(MdiIcons.apple),
                  onPressed: () {
                    // print('Apple');
                  },
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.amber;
    }

    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(getColor),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              const Text("I agree to terms and conditions")
            ],
          ),
        ],
      ),
    );
  }
}

class SubmitButton extends StatefulWidget {
  const SubmitButton({super.key});

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // background
              onPrimary: Colors.white, // foreground
              shape: const StadiumBorder(),
              padding: const EdgeInsets.only(
                  top: 15.0, bottom: 15.0, left: 40.0, right: 40.0),
            ),
            child: Text('Create Account'.toUpperCase()),
          )
        ],
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Already have an account? '),
              Text('Sign In',
                  style: TextStyle(
                    decorationColor: Colors.blue,
                    decoration: TextDecoration.underline,
                    color: Color.fromARGB(255, 49, 164, 217),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
