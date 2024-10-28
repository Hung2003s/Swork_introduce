import 'package:flutter/cupertino.dart';

class Indicator extends StatelessWidget {
  final bool isActive;

  const Indicator({super.key, required this.isActive});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        gradient:
        isActive
            ? const LinearGradient(
          begin: Alignment(-0.96, 0.28),
          end: Alignment(0.96, -0.28),
          colors: [Color(0xFF0091DE), Color(0xFF8AD6FF)],
        ) : null,
        color:  isActive ? null : const Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

}