import 'dart:async';

import 'package:flutter/material.dart';
import 'package:swork_introduce/screen/introduce_screen.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context)=> IntroduceScreen() ))
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                      left: 68,
                      right: 68,
                      top: 333,
                      child: SizedBox(
                        width: 240,
                        height: 71,
                        child: Image.asset('asset/sworklogo.png', fit: BoxFit.cover,),
                      )),
                  Positioned(
                      left: 68,
                      right: 68,
                      top: 396,
                      child: Container(
                        width: 240,
                        height: 17,
                        child: const Text('AI Generation', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SVN-Gilroy',
                          color: Color(0xff007FC2),
                        ),textAlign: TextAlign.right,),)),
                  Positioned(
                    left: 159.55,
                    top: 513,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 48,
                            height: 48,
                            child: Container(
                              child: const CircularProgressIndicator(
                                  color: Color(0xff0091DE),

                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text('Loading...', style: TextStyle(
                            fontFamily:'SVN-Gilroy',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff007FC2),

                          ),) ,
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}