import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 190,
        decoration: BoxDecoration(
            color: Color(0xff181818),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/god.png',
                  width: 150,
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FINAL FANTACY XIV',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        'Online',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2021 • ',
                            style: TextStyle(
                                color: Colors.white.withOpacity(.4),
                                fontSize: 14),
                          ),
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    const Color(0xff51acff),
                                    const Color(0xff51acff).withOpacity(.5)
                                  ],
                                  stops: const [
                                    0.5,
                                    0.5
                                  ]).createShader(bounds);
                            },
                            child: const Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                                color: Colors.white.withOpacity(.4),
                                fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'by Stephonie Myers',
                        style: TextStyle(
                            color: Colors.white.withOpacity(.4), fontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
