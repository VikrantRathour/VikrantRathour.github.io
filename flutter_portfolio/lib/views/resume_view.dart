import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/services_view.dart';
import 'package:flutter_portfolio/views/utility/clipper.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key? key}) : super(key: key);

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
                          Text('MY',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold)),
                          Text(' HISTORY',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: 400.0,
                      child: ListView(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Education',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            height: 1.0,
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: 400.0,
                      child: ListView(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Experiences',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            height: 1.0,
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                          const EducationListTile(
                            titleData: 'University of California, Los Angeles',
                            subTitleData1:
                                'Bachelor of Science in Computer Science',
                            subTitleData2: '2017 - 2021',
                          ),
                        ],
                      ),
                    ),
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
                              builder: (context) => const ServicesView()));
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
        ),
      ),
    );
  }
}

class EducationListTile extends StatelessWidget {
  final String titleData;
  final String subTitleData1;
  final String subTitleData2;
  const EducationListTile({
    required this.titleData,
    required this.subTitleData1,
    required this.subTitleData2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipPath(
        clipper: HexagonClipper(),
        child: Container(
          color: Colors.white24,
          width: 50.0,
          height: 50.0,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.format_align_left,
              color: Colors.white,
            ),
          ),
        ),
      ),
      title: Text(
        titleData,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subTitleData1,
              style: const TextStyle(
                color: Colors.white54,
              ),
            ),
            Text(
              subTitleData2,
              style: const TextStyle(
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
