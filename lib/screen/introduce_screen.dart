import 'package:flutter/material.dart';
import 'package:swork_introduce/screen/walkthrough_screen.dart';

class IntroduceScreen extends StatefulWidget {
  const IntroduceScreen({super.key});

  @override
  State<IntroduceScreen> createState() => _IntroduceScreenState();
}

class _IntroduceScreenState extends State<IntroduceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: <Widget>[
      Image.asset(
        'asset/introducescr.png',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      ),
      Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 443,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0x000091DE), Color(0xFF0091DE)],
              ),
            ),
          )),
      const Positioned(
          bottom: 98,
          left: 25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 211,
                height: 50,
                child: Text(
                  'Welcome to Swork AI Generation',
                  style: TextStyle(
                      fontFamily: 'SVN-Gilroy',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.white,
                      height: 0),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 336,
                height: 54,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                    fontFamily: 'SVN-Gilroy',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )),
      Positioned(
          bottom: 50,
          right: 20,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => WalkthroughScreen(),
              ));
            },
            child: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
              size: 24,
            ),
          ))
    ])));
  }
}
