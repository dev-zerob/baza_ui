import 'package:baza_ui/core/theme/app_color.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class RegisterStep05 extends StatefulWidget {
  @override
  _RegisterStep05State createState() => _RegisterStep05State();
}

class _RegisterStep05State extends State<RegisterStep05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: StyleUtil.instance.appSvgIcon(
          context,
          svgPath: 'assets/icon/ic_appbar_back.svg',
        ),
        title: Text(
          '2 of 3',
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: StyleUtil.instance.mainPadding().copyWith(bottom: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '내가 좋아하는',
                style: Theme.of(context).textTheme.headline4.copyWith(
                      fontFamily: StyleUtil.instance.emphasisFont,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: 4.0,
              ),
              TextField(
                maxLength: 10,
                maxLines: 1,
                keyboardType: TextInputType.text,
                autofocus: true,
                decoration: InputDecoration(
                  counterText: '',
                ),
                style: Theme.of(context).textTheme.headline3.copyWith(
                      color: AppColor.instance.grey[900],
                      fontFamily: StyleUtil.instance.emphasisFont,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(),
              SizedBox(
                height: 10.0,
              ),
              ListView(),
            ],
          ),
        ),
      ),
    );
  }
}
