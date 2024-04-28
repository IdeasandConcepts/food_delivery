import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    required this.numitem,
    required this.press,
  }) : super(key: key);
  final String svgSrc;
  final int numitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
                color: Colors.amberAccent.withOpacity(0.1),
                shape: BoxShape.circle),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numitem != 0)
            Positioned(
              left: 2,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    color: Color(0xffff4848),
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white)),
                child: Center(
                    child: Text(
                  '${numitem}',
                  style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
              ),
            )
        ],
      ),
    );
  }
}
