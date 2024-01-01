import 'package:flutter/material.dart';
import 'package:task/homepage.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 28, 46, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              TaskWidget(
                time: '1h 30m',
                color: const Color.fromRGBO(156, 236, 254, 0.9),
                smallText: 'Myself',
                bigText: 'Walk My Dog',
                image: ClipOval(
                    child: Image.asset(
                  'assets/images/image2.jpeg',
                  width: 40,
                  height: 40,
                )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(createRoute());
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const createRoute(),
                  //   ),
                  // );
                },
                child: TaskWidget(
                    time: '2h 45m',
                    color: const Color.fromRGBO(254, 249, 112, 1),
                    smallText: 'Sweet Home',
                    bigText: 'Grocery Shopping',
                    image: Row(
                      children: [
                        ClipOval(
                            child: Image.asset(
                          'assets/images/image3.jpeg',
                          width: 40,
                          height: 40,
                        )),
                        ClipOval(
                            child: Image.asset(
                          'assets/images/image2.jpeg',
                          width: 40,
                          height: 40,
                        )),
                      ],
                    )),
              ),
              TaskWidget(
                time: '3h 59m',
                color: Colors.white,
                smallText: 'Work',
                bigText: 'Business Meeting',
                image: ClipOval(
                    child: Image.asset(
                  'assets/images/image1.jpeg',
                  width: 40,
                  height: 40,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
