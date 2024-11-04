import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:swork_introduce/model/appbanner.dart';
import 'package:swork_introduce/screen/banneritems.dart';
import 'package:swork_introduce/screen/first_screen.dart';
import 'package:swork_introduce/screen/indicator.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 712,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                } ,
                itemCount: appBannerList.length,
                itemBuilder: (context, index) {
                  //var banner = appBannerList[index];
                  return BannerItems(appbanner: appBannerList[selectedIndex]);
                }),
          ),
          Column(
            children: [
              SizedBox(
                width: 337,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ...List.generate(
                              appBannerList.length,
                              (index) => Indicator(
                                  isActive: (selectedIndex == index) ? true : false)),
                        ],
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (selectedIndex == appBannerList.length-1) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
                            } else if (-1 < selectedIndex && selectedIndex < appBannerList.length-1) {
                              selectedIndex++;
                            } else {
                              selectedIndex = 0;
                            }
                          });
                        },
                        child: SizedBox(
                          height: 16,
                          child: Text(
                            (selectedIndex == appBannerList.length-1)
                                ? 'Get started'
                                : 'Next',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff0091DE),
                                fontFamily: 'SVN-Gilroy',
                                height: 0.8,
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

