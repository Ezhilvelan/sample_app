import 'package:flutter/material.dart';
import 'package:sample_app/FirstFragment.dart';
import 'package:sample_app/SecondFragment.dart';
import 'package:sample_app/ThirdFragment.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // int count = 0;
  //
  // increment() {
  //   setState(() {
  //     count = count + 1;
  //   });
  // }
  int currentIndex = 0;

  Widget getCurrentFragment() {
    switch(currentIndex) {
      case 1:
        return FirstFragment();
      case 2:
        return SecondFragment();
      case 3:
        return ThirdFragment();
      default:
        return const Text('sample', style: TextStyle(fontSize: 30.0));
    }
  }

  setCurrentIndex(int index){
    setState(() {
      currentIndex = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 40.0, left: 10.0),
                height: 250.0,
                width: double.infinity,
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(
                        Icons.account_circle,
                        size: 70.0,
                        color: Colors.white
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      'Jhon Britto',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white
                      ),
                    ),
                    Text(
                      'jhonbritto@gmail.com',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white70,
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                onTap: (){setCurrentIndex(1);},
                selected: currentIndex == 1 ? true : false,
                title: const Text(
                  'Fragment 1',
                  // style: TextStyle(color: Colors.white),
                ),
                leading: const Icon(Icons.playlist_add_check),
              ),
              ListTile(
                onTap: (){setCurrentIndex(2);},
                selected: currentIndex == 2 ? true : false,
                title: const Text(
                  'Fragment 2',
                  // style: TextStyle(color: Colors.white),
                ),
                leading: const Icon(Icons.playlist_add_check),
              ),
              ListTile(
                onTap: (){setCurrentIndex(3);},
                selected: currentIndex == 3 ? true : false,
                title: const Text(
                  'Fragment 3',
                  // style: TextStyle(color: Colors.white),
                ),
                leading: const Icon(Icons.playlist_add_check),
              ),
            ],
          ),
        ),
        // endDrawer: const Drawer(),
        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  title: Text('Home'),
                  icon: Icon(Icons.home)
              ),
              BottomNavigationBarItem(
                  title: Text('Label'),
                  icon: Icon(Icons.label)
              ),
            ]
        ),
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          // leading: const Icon(Icons.home),
          // actions: const [
          //   Icon(Icons.ac_unit),
          //   Icon(Icons.access_alarm),
          // ],
        ),
        body: getCurrentFragment(),
        // Center(
        //     child: Container(
        //       height: 400.0,
        //       color: Colors.green,
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           Container(
        //             height: 50.0,
        //             width: 50.0,
        //             color: Colors.orange,
        //             margin: const EdgeInsets.all(5.0),
        //           ),
        //           Container(
        //             height: 50.0,
        //             width: 50.0,
        //             color: Colors.orange,
        //             margin: const EdgeInsets.all(5.0),
        //           ),
        //           Container(
        //             height: 50.0,
        //             width: 50.0,
        //             color: Colors.orange,
        //             margin: const EdgeInsets.all(5.0),
        //           ),
        //         ],
        //       ),
        //     )
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){increment();},
        //   child: const Icon(Icons.plus_one),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // ),
    );
  }
}
