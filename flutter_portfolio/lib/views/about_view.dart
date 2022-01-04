import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/utility/fi_colors.dart';
import 'package:flutter_portfolio/views/welcome_view.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('ABOUT',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold)),
                      Text(' ME',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'I\'ve extensive knowledge of modern Web techniques and love for Coffee. Looking for an opportunity to work and upgrade.',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 150.0,
                            width: 150.0,
                            color: FiColors.primaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: 'Date Of Birth: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text: '14TH APRIL, 1999',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                RichText(
                                  text: const TextSpan(
                                    text: 'Languages: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text: 'ENGLISH, HINDI',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                RichText(
                                  text: const TextSpan(
                                    text: 'Expert In: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text: 'WEB & MOBILE DEVELOPMENT',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        // width: MediaQuery.of(context).size.width * 0.35,
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores repellendus corporis, tenetur inventore perferendis reprehenderit autem dignissimos non quos unde eveniet sapiente necessitatibus consequuntur ea ab dolore.',
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Skills'),
                      SizedBox(
                        height: 10.0,
                      ),
                      SkillProgressWidget(),
                      SkillProgressWidget(),
                      SkillProgressWidget(),
                      SkillProgressWidget(),
                      SkillProgressWidget(),
                      SkillProgressWidget(),
                    ],
                  ),
                )
              ],
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
                          builder: (context) => const WelcomeView()));
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back),
                        Text('Previous Page'),
                      ],
                    ),
                  ),
                  Row(
                    children: const [
                      Text('Next Page'),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillProgressWidget extends StatelessWidget {
  const SkillProgressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '.Net',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: LinearProgressIndicator(
                value: 0.9,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '90%',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
