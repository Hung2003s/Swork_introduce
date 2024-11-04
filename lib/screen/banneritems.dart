import 'package:flutter/cupertino.dart';
import 'package:swork_introduce/model/appbanner.dart';

class BannerItems extends StatelessWidget {

  final Appbanner appbanner;
  const BannerItems({super.key, required this.appbanner});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 81,),
        SizedBox(
          width: 336,
          height: 421,
          child: Image.asset(appbanner.image,
            fit: BoxFit.scaleDown,
          ),
        ),
        const SizedBox(height: 60,),
        SizedBox(
          width: 337,
          height: 122,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 265,
                height: 60,
                child: Text(appbanner.title,
                  style:const TextStyle(
                    fontFamily: 'SVN-Gilroy',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    height: 0,
                    color: Color(0xff0091DE),
                  ),),
              ),
              SizedBox(height: 8,),
              Container(
                width: 337,
                height: 54,
                child: Text(appbanner.content, style: const TextStyle(
                    fontFamily: 'SVN-Gilroy',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF05141F),
                    height: 1.2
                ),),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8,),
      ],
    );
  }
}

