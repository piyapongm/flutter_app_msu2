// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_msu2/views/show_list_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // หน่วงเวลาหน้าจอ
    Future.delayed(
      Duration(
        seconds: 4,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ShowListUI()),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF019D3C),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/fastfood.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'สายด่วนชวนกิน',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
                // Text(
                //   'MAHASARAKHAM UNIVERSITY',
                //   style: TextStyle(
                //       fontWeight: FontWeight.w500,
                //       fontSize: 16,
                //       color: Colors.grey[700]),
                // ),
                SizedBox(
                  height: 50,
                ),
                CircularProgressIndicator(
                  color: Colors.white,
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
                'Created by Polaris',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
