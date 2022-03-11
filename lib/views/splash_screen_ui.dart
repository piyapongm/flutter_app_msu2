import 'package:flutter/material.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // TODO: implement initState
    // หน่วงเวลาหน้าจอ
    // Future.delayed(
    //   Duration(
    //     seconds: 5,
    //   ),
    //   () => Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => SigninUI()),
    //   ),
    // );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow[100],
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/msu_logo.png',
                  height: 200.0,
                ),
                Text(
                  'มหาวิทยาลัยมหาสารคาม',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                      color: Colors.grey[700]),
                ),
                Text(
                  'MAHASARAKHAM UNIVERSITY',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.grey[700]),
                ),
                CircularProgressIndicator(
                  color: Colors.yellow,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
              ),
              child: Text(
                'Created by Comcenter Mahasarakham University',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
