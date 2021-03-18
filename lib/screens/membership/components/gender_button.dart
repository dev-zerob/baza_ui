import 'package:baza_ui/theme/app_color.dart';
import 'package:baza_ui/utils/style_util.dart';
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
  final AppColor _color = AppColor();
  final StyleUtil _style = StyleUtil.instance;

  String choiceCd;

  List<Map<String, String>> genderList = [
    {'code': 'GENDER_FEMALE', 'name': '여성'},
    {'code': 'GENDER_MALE', 'name': '남성'},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                choiceCd = genderList[0]['code'];
                if (widget.onChange != null) {
                  widget.onChange(choiceCd);
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: choiceCd == genderList[0]['code']
                    ? _color.primary[100]
                    : _color.white,
                borderRadius: BorderRadius.circular(99.0),
                border: Border.all(
                  width: choiceCd == genderList[0]['code'] ? 2.0 : 1.0,
                  color: choiceCd == genderList[0]['code']
                      ? _color.primary
                      : _color.grey[200],
                ),
              ),
              height: 54.0,
              child: Center(
                child: Text(
                  '${genderList[0]['name']}',
                  style: _style
                      .textStyle(
                        fontColor: choiceCd == genderList[0]['code']
                            ? _color.primary
                            : _color.grey[400],
                        fontWeight: choiceCd == genderList[0]['code']
                            ? FontWeight.w500
                            : FontWeight.w400,
                      )
                      .bodyText1,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                choiceCd = genderList[0]['code'];
                if (widget.onChange != null) {
                  widget.onChange(choiceCd);
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: choiceCd == genderList[1]['code']
                    ? _color.primary[100]
                    : _color.white,
                borderRadius: BorderRadius.circular(99.0),
                border: Border.all(
                  width: choiceCd == genderList[1]['code'] ? 2.0 : 1.0,
                  color: choiceCd == genderList[1]['code']
                      ? _color.primary
                      : _color.grey[200],
                ),
              ),
              height: 54.0,
              child: Center(
                child: Text(
                  '${genderList[1]['name']}',
                  style: _style
                      .textStyle(
                        fontColor: choiceCd == genderList[1]['code']
                            ? _color.primary
                            : _color.grey[400],
                        fontWeight: choiceCd == genderList[1]['code']
                            ? FontWeight.w500
                            : FontWeight.w400,
                      )
                      .bodyText1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
