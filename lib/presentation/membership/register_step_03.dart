// import 'package:baza_ui/theme/app_color.dart';
// import 'package:baza_ui/presentation/membership/register_step_04.dart';
// import 'package:baza_ui/utils/style_util.dart';
// import 'package:flutter/material.dart';
//
// class RegisterStep03 extends StatefulWidget {
//   @override
//   _RegisterStep03State createState() => _RegisterStep03State();
// }
//
// class _RegisterStep03State extends State<RegisterStep03> {
//   GlobalKey imageKey = GlobalKey();
//   RenderBox renderBox;
//
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       renderBox = _imageRender();
//
//       setState(() {});
//     });
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: StyleUtil.instance.appSvgIcon(
//           context,
//           svgPath: 'assets/icon/ic_appbar_back.svg',
//         ),
//         title: Text(
//           '1 of 3',
//           style: Theme.of(context).textTheme.subtitle2.copyWith(
//                 fontWeight: FontWeight.w500,
//               ),
//         ),
//       ),
//       bottomNavigationBar: GestureDetector(
//         onTap: () {
//           Navigator.pushAndRemoveUntil(
//             context,
//             MaterialPageRoute(
//               builder: (context) => RegisterStep04(),
//             ),
//             ModalRoute.withName('/'),
//           );
//         },
//         child: Container(
//           color: Theme.of(context).primaryColor,
//           width: double.infinity,
//           height: 60.0,
//           child: Center(
//             child: Text(
//               '다음으로',
//               style: Theme.of(context).textTheme.bodyText1.copyWith(
//                     color: AppColor.instance.white,
//                     fontWeight: FontWeight.w700,
//                   ),
//             ),
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Container(
//           padding: StyleUtil.instance.mainPadding().copyWith(bottom: 0.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text.rich(
//                 TextSpan(
//                   style: Theme.of(context).textTheme.headline4.copyWith(
//                         fontFamily: StyleUtil.instance.emphasisFont,
//                         fontWeight: FontWeight.w700,
//                       ),
//                   children: [
//                     TextSpan(text: '사이즈는 맞춤 '),
//                     TextSpan(
//                       text: '추천',
//                       style: TextStyle(
//                         color: Theme.of(context).primaryColor,
//                       ),
//                     ),
//                     TextSpan(text: '과'),
//                     TextSpan(
//                       text: '분류',
//                       style: TextStyle(
//                         color: Theme.of(context).primaryColor,
//                       ),
//                     ),
//                     TextSpan(text: '를\n위해서 사용됩니다!'),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 12.0,
//               ),
//               Flexible(
//                 child: Container(
//                   key: imageKey,
//                   child: Stack(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: AssetImage(
//                               'assets/images/img_person_default.png',
//                             ),
//                             fit: BoxFit.fitWidth,
//                             alignment: Alignment.center,
//                           ),
//                         ),
//                       ),
//                       if (renderBox != null)
//                         Positioned(
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               minimumSize: Size(100.0, 50.0),
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 30.0,
//                                 vertical: 17.0,
//                               ),
//                             ),
//                             child: Text(
//                               '상의?',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .headline4
//                                   .copyWith(
//                                     fontFamily: StyleUtil.instance.emphasisFont,
//                                     fontWeight: FontWeight.w700,
//                                     color: AppColor.instance.secondary,
//                                   ),
//                             ),
//                             onPressed: () {
//                               _showAlertDialog('123', 'ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ');
//                             },
//                           ),
//                           left: renderBox.size.width / 18.0,
//                           bottom: renderBox.size.height / 1.9,
//                           // bottom: 240.0,
//                         ),
//                       if (renderBox != null)
//                         Positioned(
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               minimumSize: Size(100.0, 50.0),
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 30.0,
//                                 vertical: 17.0,
//                               ),
//                             ),
//                             child: Text(
//                               '하의?',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .headline4
//                                   .copyWith(
//                                     fontFamily: StyleUtil.instance.emphasisFont,
//                                     fontWeight: FontWeight.w700,
//                                     color: AppColor.instance.secondary,
//                                   ),
//                             ),
//                             onPressed: () {},
//                           ),
//                           left: 0.0,
//                           bottom: renderBox.size.height / 3.0,
//                         ),
//                       if (renderBox != null)
//                         Positioned(
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               minimumSize: Size(100.0, 50.0),
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 30.0,
//                                 vertical: 17.0,
//                               ),
//                             ),
//                             child: Text(
//                               '신발?',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .headline4
//                                   .copyWith(
//                                     fontFamily: StyleUtil.instance.emphasisFont,
//                                     fontWeight: FontWeight.w700,
//                                     color: AppColor.instance.secondary,
//                                   ),
//                             ),
//                             onPressed: () {},
//                           ),
//                           right: renderBox.size.height / 7.0,
//                           bottom: renderBox.size.height / 9.0,
//                         ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   RenderBox _imageRender() =>
//       imageKey.currentContext.findRenderObject() as RenderBox;
//
//   _showAlertDialog(String strTitle, String strDetails) {
//     showDialog(
//       context: context,
//       barrierColor: Colors.white.withOpacity(0.95),
//       builder: (BuildContext context) {
//         return Material(
//           type: MaterialType.transparency,
//           child: Padding(
//             padding: StyleUtil.instance.titlePadding(),
//             child: Column(
//               children: <Widget>[
//                 Text.rich(
//                   TextSpan(
//                     text: '선호하는\n',
//                     children: [
//                       TextSpan(
//                         text: '상의 ',
//                         style: TextStyle(
//                           color: Theme.of(context).primaryColor,
//                         ),
//                       ),
//                       TextSpan(text: '사이즈?'),
//                     ],
//                     style: Theme.of(context).textTheme.headline3.copyWith(
//                           fontFamily: StyleUtil.instance.emphasisFont,
//                           fontWeight: FontWeight.w700,
//                           color: AppColor.instance.grey[900],
//                         ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 16.0,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(10.0, 10.0),
//                         shape: const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 24.0,
//                           vertical: 14.0,
//                         ),
//                         primary: AppColor.instance.white,
//                         side: BorderSide(
//                           width: 1.0,
//                           color: AppColor.instance.grey[900],
//                         ),
//                       ),
//                       onPressed: () {},
//                       child: Text(
//                         'S',
//                         style: Theme.of(context).textTheme.headline3.copyWith(
//                               fontFamily: StyleUtil.instance.emphasisFont,
//                               fontWeight: FontWeight.w700,
//                               color: AppColor.instance.grey[900],
//                             ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 8.0,
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(10.0, 10.0),
//                         shape: const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 24.0,
//                           vertical: 14.0,
//                         ),
//                         primary: AppColor.instance.white,
//                         side: BorderSide(
//                           width: 1.0,
//                           color: AppColor.instance.grey[900],
//                         ),
//                       ),
//                       onPressed: () {},
//                       child: Text(
//                         'M',
//                         style: Theme.of(context).textTheme.headline3.copyWith(
//                               fontFamily: StyleUtil.instance.emphasisFont,
//                               fontWeight: FontWeight.w700,
//                               color: AppColor.instance.grey[900],
//                             ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 8.0,
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(10.0, 10.0),
//                         shape: const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 24.0,
//                           vertical: 14.0,
//                         ),
//                         primary: AppColor.instance.white,
//                         side: BorderSide(
//                           width: 1.0,
//                           color: AppColor.instance.grey[900],
//                         ),
//                       ),
//                       onPressed: () {},
//                       child: Text(
//                         'L',
//                         style: Theme.of(context).textTheme.headline3.copyWith(
//                               fontFamily: StyleUtil.instance.emphasisFont,
//                               fontWeight: FontWeight.w700,
//                               color: AppColor.instance.grey[900],
//                             ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
