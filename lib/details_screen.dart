import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      barrierColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF343434),
                  Color(0xFF000000),
                ],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                Text(
                  'God of War Raganrök',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '2018 • Santo Manico Studio • ',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 14,
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            const Color(0xff51acff),
                            const Color(0xff51acff).withOpacity(0.5)
                          ],
                          stops: [0.5, 0.5],
                        ).createShader(bounds);
                      },
                      child: const Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '4.8',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Join Kratos and Atreus on a mythic journey for answers before Raganrök arrives',
                    style: TextStyle(color: Colors.white.withOpacity(.7)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.2),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              width: 1, color: Colors.white.withOpacity(.8))),
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Center(
                        child: Text(
                          'Action',
                          style: TextStyle(color: Colors.white.withOpacity(.7)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.2),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              width: 1, color: Colors.white.withOpacity(.8))),
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Center(
                        child: Text(
                          'Adventure',
                          style: TextStyle(color: Colors.white.withOpacity(.7)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.2),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              width: 1, color: Colors.white.withOpacity(.8))),
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Center(
                        child: Text(
                          'Open world',
                          style: TextStyle(color: Colors.white.withOpacity(.7)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 240,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Center(
                    child: Text(
                      'Mask as played',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showModalBottomSheet(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.4), shape: BoxShape.circle),
              child: const Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
        ),
        title: const Text('Details', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.4), shape: BoxShape.circle),
              child: const Icon(Icons.more_horiz, color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Align(
              alignment: Alignment.center, child: Image.asset('assets/god.png'))
        ],
      ),
    );
  }
}
