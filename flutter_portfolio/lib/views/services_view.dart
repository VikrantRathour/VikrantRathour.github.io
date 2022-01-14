import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/about_view.dart';
import 'package:flutter_portfolio/views/resume_view.dart';

import 'utility/clipper.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('AWESOME',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold)),
                          Text(' SERVICES',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica,quam nunc putamus parum claram anteposuerit.',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 100.0,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ServicesHexagonWidgets(
                      data: 'WELCOME',
                    ),
                    ServicesHexagonWidgets(
                      data: 'About',
                    ),
                    ServicesHexagonWidgets(
                      data: 'Services',
                    ),
                    ServicesHexagonWidgets(
                      data: 'Resume',
                    ),
                    ServicesHexagonWidgets(
                      data: 'Resume',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100.0,
                ),
                SizedBox(
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AboutView()));
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.arrow_back),
                            Text('Previous Page'),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ResumeView()));
                        },
                        child: Row(
                          children: const [
                            Text('Next Page'),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ServicesHexagonWidgets extends StatelessWidget {
  final String data;
  final GestureTapCallback? onTap;
  const ServicesHexagonWidgets({
    this.data = 'TEXT',
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipPath(
            clipper: HexagonClipper(),
            child: Container(
              color: Colors.black,
              width: 200,
              height: 200,
            ),
          ),
          ClipPath(
            clipper: HexagonClipper(),
            child: Container(
              color: Colors.white,
              width: 199,
              height: 199,
            ),
          ),
          ClipPath(
            clipper: HexagonClipper(),
            child: Container(
              color: Colors.black,
              width: 160,
              height: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
