import 'package:baza_ui/screens/membership/components/gender_button.dart';
import 'package:baza_ui/screens/membership/components/profile_register_circle.dart';
import 'package:baza_ui/theme/app_color.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class RegisterUserInfo extends StatelessWidget {
  final AppColor _color = AppColor();
  final StyleUtil _style = StyleUtil.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: _style.paddingNoAppBar(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileRegisterCircle(),
              SizedBox(
                height: 12.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _inputLabel('닉네임'),
                  SizedBox(
                    width: 16.0,
                  ),
                  Flexible(
                    child: TextField(
                      maxLength: 10,
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      autofocus: true,
                      decoration: _style.inputDecorationRegular(),
                      style: _style
                          .textStyle(fontColor: _color.grey[900])
                          .bodyText1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _inputLabel('출생년도'),
                  SizedBox(
                    width: 16.0,
                  ),
                  Flexible(
                    child: TextField(
                      maxLength: 4,
                      maxLines: 1,
                      keyboardType: TextInputType.number,
                      decoration: _style.inputDecorationRegular().copyWith(
                            suffixText: '년',
                          ),
                      style: _style
                          .textStyle(fontColor: _color.grey[900])
                          .bodyText1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _inputLabel('성별'),
                  SizedBox(
                    width: 16.0,
                  ),
                  Flexible(
                    child: GenderButton(),
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                style: _style.buttonRegular(buttonColor: _color.primary),
                onPressed: () {
                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => RegisterStep02(),
                  //   ),
                  //   ModalRoute.withName('/'),
                  // );
                },
                child: Text(
                  '다음으로',
                  style: _style
                      .textStyle(
                        fontColor: _color.white,
                        fontWeight: FontWeight.w700,
                      )
                      .bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputLabel(String label) {
    return SizedBox(
      width: 70.0,
      child: Text(
        label,
        style: _style
            .textStyle(
              fontColor: _color.blueGrey[900],
              fontWeight: FontWeight.w500,
            )
            .subtitle1,
      ),
    );
  }
}
