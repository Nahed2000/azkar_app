import 'dart:ffi';

import 'package:azkar/screens/setting_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  String _currentcontent = 'استغفر الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          // IconButton(
          //   onPressed: () => Navigator.pushNamed(context, '/info_screen',
          //       arguments: {'message': 'Info Screen'}),
          //   icon: const Icon(
          //     Icons.info,
          //   ),
          // ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const SettingScreen(message: 'Setting Screen '),
              ),
            ),
            icon: const Icon(
              Icons.settings,
              size: 30,
            ),
          ),
          PopupMenuButton<String>(
            iconSize: 30,
            // icon: Icon(Icons.),
            elevation: 4,
            onSelected: (value) {
              if (_currentcontent != value) {
                setState(() {
                  counter = 0;
                  _currentcontent = value;
                });
              }
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  child: Text('استغفر الله'),
                  value: 'استغفر الله',
                  height: 16,
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  child: Text('سبحان الله'),
                  value: 'سبحان الله',
                  height: 16,
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  child: Text('الحمد لله'),
                  value: 'الحمد لله',
                  height: 16,
                ),
              ];
            },
          ),
        ],
        title: const Text(
          'Azkar',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade200, Colors.teal.shade700],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CircleAvatar(

             // child: Image.asset('images/k.png',),
              radius: 40,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                //start: 20.0,
                top: 20,
                bottom: 5
                // end: 20,
              ),
              child: Card(
                margin: const EdgeInsetsDirectional.only(
                  bottom: 20,
                ),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                //color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _currentcontent,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                        //textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      color: Colors.blue.shade300,
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      child: Text(
                        '$counter',
                        style: const TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
         //   const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade500,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const Text(
                      'تسبيح',
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape:const RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(15),

                      ),
                    ),
                      primary: Colors.teal.shade700
                    ),
                    onPressed: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                    child: const Text(
                      'اعادة',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
    );
  }
}

 