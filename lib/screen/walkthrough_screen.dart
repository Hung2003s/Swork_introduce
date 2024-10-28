import 'package:flutter/material.dart';
import 'package:swork_introduce/model/appbanner.dart';
import 'package:swork_introduce/screen/banneritems.dart';
import 'package:swork_introduce/screen/indicator.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  @override
  Widget build(BuildContext context) {
    var selectedIndex = 0;
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 712,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                } ,
                itemCount: appBannerList.length,
                itemBuilder: (context, index) {
                  return BannerItems(appbanner: appBannerList[index]);
                }),
          ),
          Column(
            children: [
              SizedBox(
                width: 337,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...List.generate(
                        appBannerList.length,
                        (index) => Indicator(
                            isActive: selectedIndex == index ? true : false)),
                    GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: SizedBox(
                          height: 16,
                          child: Text(
                            (selectedIndex == appBannerList.length)
                                ? 'Get started'
                                : 'Next',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff0091DE),
                                fontFamily: 'SVN-Gilroy',
                                fontSize: 16),
                          ),
                        )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
