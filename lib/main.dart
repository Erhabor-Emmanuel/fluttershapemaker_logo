import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Shape Maker Logo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String? title;
  const MyHomePage({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
            alignment: Alignment.center,
            children: [
              ClipPath(
                clipper: MyCliper(),
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.yellow.shade900, Colors.yellow])),
                  child: AspectRatio(
                    aspectRatio: 1 / 1.5,
                  ),
                ),
              ),
              ClipPath(
                clipper: MyCliper(),
                child: Container(
                  height: 200,
                  child: AspectRatio(
                    aspectRatio: 1 / 1.5,
                    child: Image.network(
                        'https://images.ctfassets.net/hrltx12pl8hq/11PFjPMng8Ltpg5myMKGAE/a8dd83edfa68df7c7fc1b200eff92211/shutterstock_152461202.jpg?fit=fill&w=480&h=400&fm=jpg&fl=progressive',
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}


class MyCliper extends CustomClipper<Path>{

  @override
  getClip(Size size) {

    Path path = Path();
    path.moveTo(size.width * 0.07, size.height * 0.08);
    path.quadraticBezierTo(size.width * 0.07, size.height * 0.04,
        size.width * 0.13, size.height * 0.04);
    path.cubicTo(size.width * 0.32, size.height * 0.04, size.width * 0.68,
        size.height * 0.04, size.width * 0.87, size.height * 0.04);
    path.quadraticBezierTo(size.width * 0.93, size.height * 0.04,
        size.width * 0.93, size.height * 0.08);
    path.quadraticBezierTo(size.width * 0.93, size.height * 0.44,
        size.width * 0.93, size.height * 0.56);
    path.cubicTo(size.width * 0.93, size.height * 0.72, size.width * 0.61,
        size.height * 0.81, size.width * 0.53, size.height * 0.84);
    path.quadraticBezierTo(size.width * 0.49, size.height * 0.85,
        size.width * 0.46, size.height * 0.84);
    path.quadraticBezierTo(size.width * 0.07, size.height * 0.72,
        size.width * 0.07, size.height * 0.56);
    path.quadraticBezierTo(size.width * 0.07, size.height * 0.44,
        size.width * 0.07, size.height * 0.08);
    path.close();
    return path;

  }


  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}


