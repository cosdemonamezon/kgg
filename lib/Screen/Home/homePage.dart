import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/1.PNG',
                  height: size.height * 0.23,
                  width: size.width * 0.43,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            SizedBox(height: size.height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height*0.08,
                  width: size.width*0.55,              
                  child: Image.asset('assets/images/4.PNG',fit: BoxFit.fill,),
                ),
              ],
            ),
            SizedBox(height: size.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height*0.08,
                  width: size.width*0.55,
                  child: Image.asset('assets/images/5.PNG',fit: BoxFit.fill,),
                ),
              ],
            ),
            SizedBox(height: size.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height*0.08,
                  width: size.width*0.55,
                  child: Image.asset('assets/images/6.PNG',fit: BoxFit.fill,),
                ),
              ],
            ),
            SizedBox(height: size.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height*0.08,
                  width: size.width*0.55,
                  child: Image.asset('assets/images/7.PNG',fit: BoxFit.fill,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
