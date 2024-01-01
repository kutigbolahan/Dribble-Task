import 'package:flutter/material.dart';
import 'package:task/homepage.dart';

class BoardsScreen extends StatelessWidget {
  const BoardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 28, 46, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
