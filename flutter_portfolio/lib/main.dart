import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/about_view.dart';
import 'package:flutter_portfolio/views/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('VIKRANT RATHOUR',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: const Text(
              'I\'ve extensive knowledge of modern Web techniques and love for Coffee. Looking for an opportunity to work and upgrade, as well as being involved in an organization that believes in gaining a competitive edge and giving back to the community.',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeHexagonWidgets(
                icon: Icons.person_outline,
                data: 'WELCOME',
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const WelcomeView())),
              ),
              HomeHexagonWidgets(
                data: 'About',
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AboutView())),
              ),
              const HomeHexagonWidgets(
                data: 'Services',
              ),
              const HomeHexagonWidgets(
                data: 'Resume',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HomeHexagonWidgets(
                data: 'Works',
              ),
              HomeHexagonWidgets(
                data: 'Testimonials',
              ),
              HomeHexagonWidgets(
                data: 'Contact',
              ),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }
}

class HomeHexagonWidgets extends StatelessWidget {
  final IconData icon;
  final String data;
  final GestureTapCallback? onTap;
  const HomeHexagonWidgets({
    this.icon = Icons.person_outline,
    this.data = 'TEXT',
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Transform.scale(
        scale: 1.28,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 23.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipPath(
                clipper: HexagonClipper(),
                child: Container(
                  color: Colors.black,
                  width: 150,
                  height: 150,
                ),
              ),
              ClipPath(
                clipper: HexagonClipper(),
                child: Container(
                  color: Colors.white,
                  width: 145,
                  height: 145,
                ),
              ),
              ClipPath(
                clipper: HexagonClipper(),
                child: Container(
                  color: Colors.black,
                  width: 135,
                  height: 135,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: Colors.white,
                        size: 45,
                      ),
                      Text(data,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12)),
                    ],
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

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 0.5, 0);
    path.moveTo(size.width, size.height * 0.25);
    path.lineTo(size.width, size.height * 0.75);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(0, size.height * 0.75);
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
