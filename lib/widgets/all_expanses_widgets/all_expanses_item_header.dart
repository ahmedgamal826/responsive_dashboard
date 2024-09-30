import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpansesItemHeader extends StatelessWidget {
  AllExpansesItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});

  final String image;
  Color? imageBackground, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: imageBackground ?? const Color(0xFFFAFAFA),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 3.14,
          child: Icon(
            color: imageColor == null ? const Color(0xff064061) : Colors.white,
            Icons.arrow_back_ios_new_outlined,
          ),
        )
      ],
    );
  }
}
