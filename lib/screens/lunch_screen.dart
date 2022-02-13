import 'package:flutter/material.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, '/home_screen'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   title: const Text('Lunch Screen'),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Container(
        //  height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.teal.shade900, Colors.teal.shade300],
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
              Text(
              'Azkar app',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 20),
            CircularProgressIndicator(
              color:Colors.white ,
            )
          ],
        ),
      ),
    );
  }
}
