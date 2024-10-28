import 'package:flutter/material.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Stack(
              children: [
                Positioned(
                    child: Container(

                    ))
              ],
            ),
          ),
        ));
  }
}