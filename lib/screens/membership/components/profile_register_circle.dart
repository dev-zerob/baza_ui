import 'package:baza_ui/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileRegisterCircle extends StatelessWidget {
  final AppColor _color = AppColor();

  final double radius = 41.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: _color.grey[200],
          backgroundImage: AssetImage(
            'assets/images/img_profile_default.png',
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: CircleAvatar(
            radius: 14.0,
            backgroundColor: _color.primary,
            child: SvgPicture.asset(
              'assets/icon/ic_img_change.svg',
            ),
          ),
        ),
      ],
    );
  }
}
