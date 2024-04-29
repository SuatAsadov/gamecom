import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamecom1/home_page.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Gilroy',
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black)),
      home: const GameCom()));
}

class GameCom extends StatelessWidget {
  const GameCom({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        
      ),
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Gamecom',
                  style: TextStyle(color: Colors.white.withOpacity(.9)),
                ),
                const SizedBox(
                  width: 4,
                ),
                Image.asset(
                  'assets/console.png',
                  width: 30,
                )
              ],
            )),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -100,
                      child: Transform.rotate(
                        angle: 270,
                        child: Image.asset(
                          'assets/ronin.webp',
                          width: 250,
                         ),
                      ),
                    ),
                    Transform.rotate(
                      angle: 20 * 3.14 / 370,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 80),
                        child: Image.asset(
                          'assets/god.png',
                          width: 250,
                        ),
                      ),
                    ),
                    Positioned(
                        right: -170,
                        bottom: 5,
                        child: Transform.rotate(
                          angle: -45 * 3.14 / 800,
                          child: Image.asset(
                            'assets/blade.webp',
                            width: 250,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            const Text(
              'Begin Your',
              style: TextStyle(color: Colors.white, fontSize: 34),
            ),
            const Text(
              'Gambing Odyssey',
              style: TextStyle(color: Colors.white, fontSize: 34),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage())),
              child: Container(
                width: 200,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Center(
                  child: Text(
                    'Let\'s go!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'By contiuning you accept',
              style: TextStyle(color: Colors.white.withOpacity(.4)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('our',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.4),
                    )),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Terms of Service',
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
