import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StyleUtil {
  static final StyleUtil instance = StyleUtil();

  /// 강조 폰트
  String get emphasisFont => 'Gmarket';

  /// 메인화면 패딩값
  EdgeInsets mainPadding() => const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 40.0);
  EdgeInsets noAppBarPadding() => mainPadding().copyWith(top: 50.0);
  EdgeInsets titlePadding() => mainPadding().copyWith(top: 70.0);

  /// Svg Icon Widget
  Widget appSvgIcon(BuildContext context, {@required String svgPath, Function onTap}) => InkWell(
    borderRadius: BorderRadius.circular(99.0),
    onTap: onTap ?? (){
      Navigator.pop(context);
    },
    child: Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        svgPath,
        color: Theme.of(context).iconTheme.color,
        width: Theme.of(context).iconTheme.size,
        height: Theme.of(context).iconTheme.size,
      ),
    ),
  );
}