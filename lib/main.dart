import 'package:flutter/material.dart';
import 'package:form/signup.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "PAINT", debugShowCheckedModeBanner: false, home: LandingPage());
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/Background_landing.png"),
              fit: BoxFit.fitWidth,
            )),
            child: Center(
              child: Column(
                children: const [
                  Headline(),
                ],
              ),
            ),
          ),
          floatingActionButton: Stack(
            children: [
              FloatingActionButton.extended(
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (BuildContext context) {
                  //   return const SignupPage();
                  // }));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupPage()));
                },
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                label: Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 30.0, right: 20.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text('Explore'),
                        ),
                        Icon(MdiIcons.arrowRight),
                      ],
                    )),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          bottomSheet: const Padding(padding: EdgeInsets.only(bottom: 80.0))),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(top: 70.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add colour to your dream home',
            style: GoogleFonts.bebasNeue(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 48),
            ),
          ),
          SizedBox(
            width: 200,
            child: Text('One stop solution for all your home decors',
                textAlign: TextAlign.start,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 16),
                )),
          )
        ],
      ),
    );
  }
}
