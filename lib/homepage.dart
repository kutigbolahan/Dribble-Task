import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/BoardsScreen.dart';

import 'package:task/homePage_details.dart';
import 'package:task/taskScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  //int? _activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   scrolledUnderElevation: 0.0,
      //   backgroundColor: const Color.fromRGBO(16, 28, 46, 1),
      // ),
      backgroundColor: const Color.fromRGBO(16, 28, 46, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  ClipOval(
                      child: Image.asset(
                    'assets/images/image2.jpeg',
                    width: 50,
                    height: 50,
                  )),
                  const Spacer(),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(24, 40, 66, 1),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            CupertinoIcons.bell,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // Positioned(
                      //   top: 26,
                      //   left: 15,
                      //   child: Container(
                      //     // height: 10,
                      //     width: 40,
                      //     decoration: BoxDecoration(
                      //         color: Color.fromRGBO(93, 139, 255, 1),
                      //         borderRadius: BorderRadius.circular(30)),
                      //     child: const Center(
                      //       child: Text('12',
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 12,
                      //               fontWeight: FontWeight.bold)),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(24, 40, 66, 1),
                          borderRadius: BorderRadius.circular(30)),
                      child: const Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Good\nMorning',
                  style: TextStyle(
                    color: Color.fromRGBO(93, 139, 255, 1),
                    fontSize: 54,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Today's Monday",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      Text('Dec 12,2023',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("75% Done",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      Text('Completed task',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TabBar(
                indicatorColor: Colors.white,
                //   dividerColor: appColors.transparent,
                padding: const EdgeInsets.all(3),
                onTap: (index) {},
                // unselectedLabelColor:
                //     appColors.greyFF474747.withOpacity(0.8),
                //  labelColor: appColors.white,
                // indicator: BoxDecoration(
                //   borderRadius: const BorderRadius.all(Radius.circular(9)),
                //  // color: Colors.black26,
                //   boxShadow: [
                //     BoxShadow(
                //       color: Colors.black.withOpacity(0.1),
                //       blurRadius: 8,
                //     ),
                //   ],
                // ),
                tabs: [
                  Tab(
                      child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text('12',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const Text('Tasks',
                          style: TextStyle(
                              color: Color.fromRGBO(93, 139, 255, 0.7),
                              fontSize: 28,
                              fontWeight: FontWeight.w400)),
                    ],
                  )

                      // text: 'ALL',
                      ),
                  Tab(
                      child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromRGBO(195, 213, 248, 0.7),
                            )),
                        child: const Center(
                          child: Text('3',
                              style: TextStyle(
                                  color: Color.fromRGBO(195, 213, 248, 0.7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('Boards',
                          style: TextStyle(
                              color: Color.fromRGBO(195, 213, 248, 0.7),
                              fontSize: 28,
                              fontWeight: FontWeight.w400)),
                    ],
                  )),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                //    height: 200,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    TaskScreen(),
                    BoardsScreen(),
                  ],
                ),
              ),
              // Row(
              //   children: [
              //     Container(
              //       height: 25,
              //       width: 30,
              //       decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(15)),
              //       child: const Center(
              //         child: Text('12',
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontSize: 12,
              //                 fontWeight: FontWeight.bold)),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 5,
              //     ),
              //     const Text('Tasks',
              //         style: TextStyle(
              //             color: Color.fromRGBO(93, 139, 255, 0.7),
              //             fontSize: 28,
              //             fontWeight: FontWeight.w400)),
              //     const Spacer(),
              //     Container(
              //       height: 25,
              //       width: 25,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(15),
              //           border: Border.all(
              //             color: const Color.fromRGBO(195, 213, 248, 0.7),
              //           )),
              //       child: const Center(
              //         child: Text('3',
              //             style: TextStyle(
              //                 color: Color.fromRGBO(195, 213, 248, 0.7),
              //                 fontSize: 12,
              //                 fontWeight: FontWeight.bold)),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 5,
              //     ),
              //     const Text('Boards',
              //         style: TextStyle(
              //             color: Color.fromRGBO(195, 213, 248, 0.7),
              //             fontSize: 28,
              //             fontWeight: FontWeight.w400)),
              //   ],
              // ),
              // const SizedBox(
              //   height: 7,
              // ),
              // const SizedBox(
              //   height: 2,
              //   child: LinearProgressIndicator(
              //     backgroundColor: Color.fromRGBO(195, 213, 248, 0.7),
              //     value: 0.5,
              //     color: Colors.white,
              //   ),
              // ),
              // const SizedBox(
              //   height: 18,
              // ),
              // Row(
              //   children: [
              //     Container(
              //       padding: const EdgeInsets.all(6),
              //       height: 35,
              //       // width: 0,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(15),
              //           border: Border.all(
              //             color: const Color.fromRGBO(195, 213, 248, 0.7),
              //           )),
              //       child: Center(
              //           child: Row(
              //         children: [
              //           Container(
              //             height: 20,
              //             width: 20,
              //             decoration: const BoxDecoration(
              //               shape: BoxShape.circle,
              //               color: Color.fromRGBO(93, 139, 255, 1),
              //             ),
              //             child: const Center(
              //               child: Text('0',
              //                   style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 13,
              //                       fontWeight: FontWeight.bold)),
              //             ),
              //           ),
              //           const SizedBox(
              //             width: 7,
              //           ),
              //           const Text('Boards',
              //               style: TextStyle(
              //                   color: Colors.white,
              //                   fontSize: 15,
              //                   fontWeight: FontWeight.w400)),
              //         ],
              //       )),
              //     ),
              //     const Spacer(),
              //     Container(
              //       height: 30,
              //       width: 70,
              //       padding: const EdgeInsets.all(4),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(20),
              //         color: const Color.fromRGBO(93, 139, 255, 1),
              //       ),
              //       child: const Center(
              //         child: Text('Active',
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.w400)),
              //       ),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       height: 30,
              //       width: 70,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           border: Border.all(
              //             color: const Color.fromRGBO(93, 139, 255, 1),
              //           )),
              //       child: const Center(
              //         child: Text('Done',
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.w600)),
              //       ),
              //     )
              //   ],
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text('Mon',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 15,
              //             fontWeight: FontWeight.bold)),
              //     Text('Tue',
              //         style: TextStyle(
              //             color: Color.fromRGBO(195, 213, 248, 0.7),
              //             fontSize: 15,
              //             fontWeight: FontWeight.w400)),
              //     Text('Wed',
              //         style: TextStyle(
              //             color: Color.fromRGBO(195, 213, 248, 0.7),
              //             fontSize: 15,
              //             fontWeight: FontWeight.w400)),
              //     Text('Thu',
              //         style: TextStyle(
              //             color: Color.fromRGBO(195, 213, 248, 0.7),
              //             fontSize: 15,
              //             fontWeight: FontWeight.w400)),
              //     Text('Fri',
              //         style: TextStyle(
              //             color: Color.fromRGBO(195, 213, 248, 0.7),
              //             fontSize: 15,
              //             fontWeight: FontWeight.w400)),
              //     Text('Sat',
              //         style: TextStyle(
              //             color: Color.fromRGBO(195, 213, 248, 0.7),
              //             fontSize: 15,
              //             fontWeight: FontWeight.w400)),
              //     Text('Sun',
              //         style: TextStyle(
              //             color: Color.fromRGBO(195, 213, 248, 0.7),
              //             fontSize: 15,
              //             fontWeight: FontWeight.w400)),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // TaskWidget(
              //   time: '1h 30m',
              //   color: const Color.fromRGBO(156, 236, 254, 0.9),
              //   smallText: 'Myself',
              //   bigText: 'Walk My Dog',
              //   image: ClipOval(
              //       child: Image.asset(
              //     'assets/images/image2.jpeg',
              //     width: 40,
              //     height: 40,
              //   )),
              // ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.of(context).push(createRoute());
              //     // Navigator.of(context).push(
              //     //   MaterialPageRoute(
              //     //     builder: (context) => const createRoute(),
              //     //   ),
              //     // );
              //   },
              //   child: TaskWidget(
              //       time: '2h 45m',
              //       color: const Color.fromRGBO(254, 249, 112, 1),
              //       smallText: 'Sweet Home',
              //       bigText: 'Grocery Shopping',
              //       image: Row(
              //         children: [
              //           ClipOval(
              //               child: Image.asset(
              //             'assets/images/image3.jpeg',
              //             width: 40,
              //             height: 40,
              //           )),
              //           ClipOval(
              //               child: Image.asset(
              //             'assets/images/image2.jpeg',
              //             width: 40,
              //             height: 40,
              //           )),
              //         ],
              //       )),
              // ),
              // TaskWidget(
              //   time: '3h 59m',
              //   color: Colors.white,
              //   smallText: 'Work',
              //   bigText: 'Business Meeting',
              //   image: ClipOval(
              //       child: Image.asset(
              //     'assets/images/image1.jpeg',
              //     width: 40,
              //     height: 40,
              //   )),
              // ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        elevation: 40,
        backgroundColor: const Color.fromRGBO(93, 139, 255, 1),
        onPressed: () {},
        tooltip: 'Add',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
    required this.time,
    required this.color,
    required this.smallText,
    required this.bigText,
    required this.image,
  });
  final String time;
  final Color color;
  final String smallText;
  final String bigText;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(36), color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              image,
              const Spacer(),
              Text(time,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 7,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 15,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(smallText,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          Text(bigText,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}

class BoardsWidget extends StatelessWidget {
  const BoardsWidget({
    super.key,
    //  required this.time,
    required this.color,
    required this.smallText,
    required this.bigText,
    required this.image,
  });
  // final String time;
  final Color color;
  final String smallText;
  final String bigText;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(36), color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 15,
                ),
              ),
              image,
              const Spacer(),
              Icon(Icons.more_horiz),
              const SizedBox(
                width: 7,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(smallText,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          Text(bigText,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const HomePageDetails(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
