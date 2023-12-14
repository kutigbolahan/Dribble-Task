import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 28, 46, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
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
                  height: 50,
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
                Row(
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
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('Tasks',
                        style: TextStyle(
                            color: Color.fromRGBO(93, 139, 255, 0.7),
                            fontSize: 28,
                            fontWeight: FontWeight.w400)),
                    const Spacer(),
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
                ),
                const SizedBox(
                  height: 7,
                ),
                const SizedBox(
                  height: 2,
                  child: LinearProgressIndicator(
                    backgroundColor: Color.fromRGBO(195, 213, 248, 0.7),
                    value: 0.5,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      height: 35,
                      // width: 0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color.fromRGBO(195, 213, 248, 0.7),
                          )),
                      child: Center(
                          child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(93, 139, 255, 1),
                            ),
                            child: const Center(
                              child: Text('0',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          const Text('Boards',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      )),
                    ),
                    const Spacer(),
                    Container(
                      height: 30,
                      width: 70,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(93, 139, 255, 1),
                      ),
                      child: const Center(
                        child: Text('Active',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color.fromRGBO(93, 139, 255, 1),
                          )),
                      child: const Center(
                        child: Text('Done',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Mon',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Text('Tue',
                        style: TextStyle(
                            color: Color.fromRGBO(195, 213, 248, 0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    Text('Wed',
                        style: TextStyle(
                            color: Color.fromRGBO(195, 213, 248, 0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    Text('Thu',
                        style: TextStyle(
                            color: Color.fromRGBO(195, 213, 248, 0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    Text('Fri',
                        style: TextStyle(
                            color: Color.fromRGBO(195, 213, 248, 0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    Text('Sat',
                        style: TextStyle(
                            color: Color.fromRGBO(195, 213, 248, 0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    Text('Sun',
                        style: TextStyle(
                            color: Color.fromRGBO(195, 213, 248, 0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const TaskWidget(
                    time: '1h 30m',
                    color: Color.fromRGBO(156, 236, 254, 0.9),
                    smallText: 'Myself',
                    bigText: 'Walk My Dog'),
                const TaskWidget(
                    time: '2h 45m',
                    color: Color.fromRGBO(254, 249, 112, 1),
                    smallText: 'Sweet Home',
                    bigText: 'Grocery Shopping'),
                const TaskWidget(
                    time: '3h 59m',
                    color: Colors.white,
                    smallText: 'Work',
                    bigText: 'Business Meeting'),
              ],
            ),
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
  });
  final String time;
  final Color color;
  final String smallText;
  final String bigText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 135,
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(36), color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(CupertinoIcons.person),
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
