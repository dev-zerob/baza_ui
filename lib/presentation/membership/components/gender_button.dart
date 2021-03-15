import 'package:baza_ui/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class GenderButton extends StatefulWidget {
  final ValueChanged<String> onChange;

  const GenderButton({
    this.onChange,
  });

  @override
  _GenderButtonState createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  String choiceCd;

  String femaleCd = 'GENDER_FEMALE';
  String femaleNm = '여성';
  String maleCd = 'GENDER_MALE';
  String maleNm = '남성';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                choiceCd = femaleCd;
                if (widget.onChange != null) {
                  widget.onChange(choiceCd);
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: choiceCd == femaleCd
                    ? AppColor.instance.primary[100]
                    : AppColor.instance.white,
                borderRadius: BorderRadius.circular(99.0),
                border: Border.all(
                  width: choiceCd == femaleCd ? 2.0 : 1.0,
                  color: choiceCd == femaleCd
                      ? AppColor.instance.primary
                      : AppColor.instance.grey[200],
                ),
              ),
              height: 54.0,
              child: Center(
                child: Text(
                  '$femaleNm',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: choiceCd == femaleCd
                          ? AppColor.instance.primary
                          : AppColor.instance.grey[400],
                      fontWeight: choiceCd == femaleCd
                          ? FontWeight.w500
                          : FontWeight.w400),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                choiceCd = maleCd;
                if (widget.onChange != null) {
                  widget.onChange(choiceCd);
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: choiceCd == maleCd
                    ? AppColor.instance.primary[100]
                    : AppColor.instance.white,
                borderRadius: BorderRadius.circular(99.0),
                border: Border.all(
                  width: choiceCd == maleCd ? 2.0 : 1.0,
                  color: choiceCd == maleCd
                      ? AppColor.instance.primary
                      : AppColor.instance.grey[200],
                ),
              ),
              height: 54.0,
              child: Center(
                child: Text(
                  '$maleNm',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: choiceCd == maleCd
                          ? AppColor.instance.primary
                          : AppColor.instance.grey[400],
                      fontWeight: choiceCd == maleCd
                          ? FontWeight.w500
                          : FontWeight.w400),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
