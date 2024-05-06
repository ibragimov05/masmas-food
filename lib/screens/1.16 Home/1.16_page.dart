import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      /// background of page
      decoration: const BoxDecoration(
        color: Color(0xFFF4F4F4),
        image: DecorationImage(
          image: AssetImage('assets/images/page_1.6/background.png'),
          alignment: Alignment.topRight,
          fit: BoxFit.fitWidth,
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 31.0, right: 31),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Container(
                  // height: 800,
                  // width: double.infinity,
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 30,
                ),
                Text('data',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
