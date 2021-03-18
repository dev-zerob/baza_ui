// import 'package:baza_ui/theme/app_color.dart';
// import 'package:baza_ui/presentation/membership/register_step_05.dart';
// import 'package:baza_ui/utils/style_util.dart';
// import 'package:flutter/material.dart';
//
// class RegisterStep04 extends StatefulWidget {
//   @override
//   _RegisterStep04State createState() => _RegisterStep04State();
// }
//
// class _RegisterStep04State extends State<RegisterStep04> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: StyleUtil.instance.appSvgIcon(
//           context,
//           svgPath: 'assets/icon/ic_appbar_back.svg',
//         ),
//         title: Text(
//           '2 of 3',
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
//               builder: (context) => RegisterStep05(),
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
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text.rich(
//                   TextSpan(
//                     style: Theme.of(context).textTheme.headline4.copyWith(
//                           fontFamily: StyleUtil.instance.emphasisFont,
//                           fontWeight: FontWeight.w700,
//                         ),
//                     children: [
//                       TextSpan(text: '나를 나타내는 '),
//                       TextSpan(
//                         text: '#',
//                         style: TextStyle(
//                           color: Theme.of(context).primaryColor,
//                         ),
//                       ),
//                       TextSpan(text: '해쉬태그'),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 Text(
//                   '내 #스타일은',
//                   style: Theme.of(context).textTheme.subtitle2.copyWith(
//                         fontWeight: FontWeight.w700,
//                         color: AppColor.instance.grey[800],
//                       ),
//                 ),
//                 SizedBox(
//                   height: 12.0,
//                 ),
//                 Container(
//                   child: Column(
//                     children: [
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.purple,
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.white,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 Text(
//                   '내 #취미는',
//                   style: Theme.of(context).textTheme.subtitle2.copyWith(
//                         fontWeight: FontWeight.w700,
//                         color: AppColor.instance.grey[800],
//                       ),
//                 ),
//                 SizedBox(
//                   height: 12.0,
//                 ),
//                 Container(
//                   child: Column(
//                     children: [
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.pink,
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.white,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0,
//                                 vertical: 7.0,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: AppColor.instance.white,
//                                 border: Border.all(
//                                   width: 1.0,
//                                   color: AppColor.instance.grey[100],
//                                 ),
//                                 borderRadius: BorderRadius.circular(99.0),
//                               ),
//                               child: Text(
//                                 '태그 내용',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText2
//                                     .copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       color: AppColor.instance.grey,
//                                     ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
