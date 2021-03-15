import 'package:baza_ui/core/theme/app_color.dart';
import 'package:baza_ui/presentation/membership/components/gender_button.dart';
import 'package:baza_ui/presentation/membership/register_step_02.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterStep01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: StyleUtil.instance.noAppBarPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 82.0,
                height: 82.0,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 41.0,
                      backgroundColor: AppColor.instance.grey[200],
                      backgroundImage: AssetImage(
                        'assets/images/img_profile_default.png',
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: CircleAvatar(
                        radius: 14.0,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: SvgPicture.asset(
                          'assets/icon/ic_img_change.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 70.0,
                    child: Text(
                      '닉네임',
                      style:
                      Theme.of(context).textTheme.subtitle1.copyWith(
                        color: AppColor.instance.blueGrey[900],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Flexible(
                    child: TextField(
                      maxLength: 10,
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      autofocus: true,
                      decoration: InputDecoration(
                        counterText: '',
                      ),
                      style:
                      Theme.of(context).textTheme.bodyText1.copyWith(
                        color: AppColor.instance.grey[900],
                        fontWeight: FontWeight.w400,
                      ),
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
                  SizedBox(
                    width: 70.0,
                    child: Text(
                      '출생년도',
                      style:
                      Theme.of(context).textTheme.subtitle1.copyWith(
                        color: AppColor.instance.blueGrey[900],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Flexible(
                    child: TextField(
                      maxLength: 4,
                      maxLines: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        counterText: '',
                        suffixText: '년',
                      ),
                      style:
                      Theme.of(context).textTheme.bodyText1.copyWith(
                        color: AppColor.instance.grey[900],
                        fontWeight: FontWeight.w400,
                      ),
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
                  SizedBox(
                    width: 70.0,
                    child: Text(
                      '성별',
                      style:
                      Theme.of(context).textTheme.subtitle1.copyWith(
                        color: AppColor.instance.blueGrey[900],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Flexible(
                    child: GenderButton(
                      onChange: (choiceCd) {
                        print(choiceCd);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterStep02(),
                    ),
                    ModalRoute.withName('/'),
                  );
                },
                child: Text(
                  '다음으로',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColor.instance.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
