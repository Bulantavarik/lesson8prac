import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> police = ['Единый телефон служб', 'Единый телефон служб'];
        List<String> transport = ['Единый телефон служб', 'Единый телефон служб'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Телефоны служб',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              height: 25,
              child: Text(
                'Mедицина',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 6),
                    padding: EdgeInsets.all(15),
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Единый телефон служб',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Единый телефон служб',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 15),
              height: 50,
              child: Text(
                'Полиция',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 125,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: police.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Text(
                      '${police[index]}',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              height: 25,
              child: Text(
                'Посольство',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 6),
                      padding: EdgeInsets.all(15),
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Text(
                        'Единый телефон служб',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Text(
                        'Единый телефон служб',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 15),
              height: 50,
              child: Text(
                'Транспорт',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 125,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Text(
                      '${transport[index]}',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20);
                },
              ),
            ),
            
          ],
        ),
      ),

      // Container(
      //   width: 1000,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Container(
      //         padding: EdgeInsets.only(left: 15),
      //         height: 25,
      //         child: Text(
      //           'Mедицина',
      //           style: TextStyle(
      //             fontSize: 20,
      //             fontWeight: FontWeight.w700,
      //           ),
      //         ),
      //       ),
      //       ListView(
      //         scrollDirection: Axis.horizontal,
      //         shrinkWrap: true,
      //         physics: AlwaysScrollableScrollPhysics(
      //           parent: BouncingScrollPhysics(),
      //         ),
      //         children: [
      //           Row(
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.all(20),
      //                 height: 75,
      //                 width: 250,
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(20),
      //                   color: Colors.blue[400],
      //                 ),
      //                 child: Text(
      //                   'Единый телефон служб',
      //                   style: TextStyle(
      //                     fontSize: 15,
      //                     fontWeight: FontWeight.w400,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ),
      //               Container(
      //                 margin: EdgeInsets.all(20),
      //                 height: 75,
      //                 width: 250,
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(20),
      //                   color: Colors.blue[400],
      //                 ),
      //                 child: Text(
      //                   'Единый телефон служб',
      //                   style: TextStyle(
      //                     fontSize: 15,
      //                     fontWeight: FontWeight.w400,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

 // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   shrinkWrap: true,
      //   physics: AlwaysScrollableScrollPhysics(
      //     parent: BouncingScrollPhysics(),
      //   ),
      //   children: [
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Container(
      //           height: 25,
      //           child: Text(
      //             'Mедицина',
      //             style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.w700,
      //             ),
      //           ),
      //         ),
      //         Row(
      //           children: [
      //             Container(
      //               margin: EdgeInsets.all(20),
      //               height: 75,
      //               width: 250,
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(20),
      //                 color: Colors.blue[400],
      //               ),
      //               child: Text(
      //                 'Единый телефон служб',
      //                 style: TextStyle(
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.w400,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ),
      //             Container(
      //           margin: EdgeInsets.all(20),
      //           height: 75,
      //           width: 250,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(20),
      //             color: Colors.blue[400],
      //           ),
      //           child: Text(
      //             'Единый телефон служб',
      //             style: TextStyle(
      //               fontSize: 15,
      //               fontWeight: FontWeight.w400,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ),
      //           ],
      //         ),
      //       ],
      //     )
      //   ],
      // ),
