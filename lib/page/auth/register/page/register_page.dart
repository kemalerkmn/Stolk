// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:kartal/kartal.dart';
// import 'package:stolk_/page/auth/login/page/login_page.dart';
// import 'package:stolk_/page/auth/widget/auth_widget.dart';
// import 'package:stolk_/page/auth/widget/or_login_text.dart';
// import 'package:stolk_/widget/custom_elevated_button.dart';

// class RegisterPage extends StatelessWidget {
//   const RegisterPage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image.asset(
//             'assets/image/icons/background_logo.png', // Eklediğiniz arka plan görselinin adı
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           const RegisterPageWidget(),
//         ],
//       ),
//     );
//   }
// }

// class RegisterPageWidget extends StatefulWidget {
//   const RegisterPageWidget({super.key});

//   @override
//   State<RegisterPageWidget> createState() => _RegisterPageWidgetState();
// }

// class _RegisterPageWidgetState extends State<RegisterPageWidget> {
//   TextEditingController _emailcontroller = TextEditingController();
//   TextEditingController _passwordcontroller = TextEditingController();
//   TextEditingController _usernamecontroller = TextEditingController();
//   TextEditingController _passwordAgaincontroller = TextEditingController();

//   bool isPassword = true;
//   bool isPassword2 = true;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: context.padding.normal,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Text('Giriş Yap',
//                     style: context.general.textTheme.titleLarge?.copyWith(
//                       fontSize: 24,
//                       fontWeight: FontWeight.w600,
//                     )),
//               ),
//               SizedBox(
//                 height: context.general.mediaSize.height * 0.15,
//               ),
//               Text("Kullanıcı Adı",
//                   style: context.general.textTheme.bodyLarge
//                       ?.copyWith(fontWeight: FontWeight.w600)),
//               SizedBox(
//                 height: 48,
//                 child: TextField(
//                   controller: _usernamecontroller,
//                   cursorColor: Colors.white,
//                   decoration: const InputDecoration(
//                     hintText: "Kullanıcı Adı",
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: context.general.mediaSize.height * 0.015,
//               ),
//               Text("Email",
//                   style: context.general.textTheme.bodyLarge
//                       ?.copyWith(fontWeight: FontWeight.w600)),
//               SizedBox(
//                 height: 48,
//                 child: TextField(
//                   controller: _emailcontroller,
//                   cursorColor: Colors.white,
//                   decoration: const InputDecoration(
//                     hintText: "Email Adres",
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: context.general.mediaSize.height * 0.015,
//               ),
//               Text("Parola",
//                   style: context.general.textTheme.bodyLarge
//                       ?.copyWith(fontWeight: FontWeight.w600)),
//               SizedBox(
//                 height: 48,
//                 child: TextField(
//                   controller: _passwordcontroller,
//                   cursorColor: Colors.white,
//                   obscureText: isPassword,
//                   decoration: InputDecoration(
//                     suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() {
//                             isPassword = !isPassword;
//                           });
//                         },
//                         icon: SvgPicture.asset(isPassword
//                             ? "assets/icons/auth_icons/password_icons.svg"
//                             : "assets/icons/auth_icons/password_icons2.svg")),
//                     hintText: "Parola",
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: context.general.mediaSize.height * 0.015,
//               ),
//               Text("Parola Tekrar",
//                   style: context.general.textTheme.bodyLarge
//                       ?.copyWith(fontWeight: FontWeight.w600)),
//               SizedBox(
//                 height: 48,
//                 child: TextField(
//                   controller: _passwordAgaincontroller,
//                   cursorColor: Colors.white,
//                   obscureText: isPassword2,
//                   decoration: InputDecoration(
//                     suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() {
//                             isPassword2 = !isPassword2;
//                           });
//                         },
//                         icon: SvgPicture.asset(isPassword2
//                             ? "assets/icons/auth_icons/password_icons.svg"
//                             : "assets/icons/auth_icons/password_icons2.svg")),
//                     hintText: "Parola Tekrar",
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: context.general.mediaSize.height * 0.01,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Spacer(),
//                   TextButton(
//                       onPressed: () {
//                         Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const LoginPage(),
//                             ));
//                       },
//                       child: Text(
//                         "Bir hesabın mı var?",
//                         style: context.general.textTheme.bodyMedium?.copyWith(
//                           decoration: TextDecoration.underline,
//                           color: Colors.grey,
//                         ),
//                       )),
//                 ],
//               ),
//               SizedBox(
//                 height: context.general.mediaSize.height * 0.015,
//               ),
//               CustomElevatedButton(
//                 onPressed: () {},
//                 title: 'Kayıt Ol',
//               ),
//               SizedBox(
//                 height: context.general.mediaSize.height * 0.015,
//               ),
//               const OrLoginText(),
//               SizedBox(
//                 height: context.general.mediaSize.height * 0.01,
//               ),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // AuthWidget(
//                   //   image: 'assets/icons/auth_icons/google.svg',
//                   // ),
//                   // AuthWidget(
//                   //   image: 'assets/icons/auth_icons/apple.svg',
//                   // ),
//                   // AuthWidget(
//                   //   image: 'assets/icons/auth_icons/facebook.svg',
//                   // )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
