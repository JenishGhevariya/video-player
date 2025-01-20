import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_provider/v.dart';
import 'package:get_provider/video__player.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: VideoPlayer2(),
        );
      },
    );
  }
}

// import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Flutter Splash Screen Demo"),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               FlutterSplashScreen.gif(
//                 gifPath: 'assets/example.gif',
//                 gifWidth: 269,
//                 gifHeight: 474,
//                 nextScreen: const MyHomePage(),
//                 duration: const Duration(milliseconds: 3515),
//                 onInit: () async {
//                   debugPrint("onInit");
//                 },
//                 onEnd: () async {
//                   debugPrint("onEnd 1");
//                 },
//               ),
//               const Text(
//                 'You have pushed the button this many times:',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
