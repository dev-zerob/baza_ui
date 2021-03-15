import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class SizeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.transparent,
          padding: StyleUtil.instance.noAppBarPadding(),
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                  text: '선호하는\n',
                  children: [
                    TextSpan(
                      text: '상의',
                    ),
                    TextSpan(
                        text: '사이즈?'
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
