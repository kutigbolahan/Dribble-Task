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
              BoardsWidget(
                //  time: '1h 30m',
                color: const Color.fromRGBO(156, 236, 254, 0.9),
                smallText: '2 Active Task',
                bigText: 'Myself',
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
                child: BoardsWidget(
                    //  time: '2h 45m',
                    color: const Color.fromRGBO(254, 249, 112, 1),
                    smallText: '4 Active Tasks',
                    bigText: 'Sweet Home',
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
              BoardsWidget(
                  //  time: '3h 59m',
                  color: Colors.white,
                  smallText: '6 Active Tasks',
                  bigText: 'Work',
                  image: Row(
                    children: [
                      ClipOval(
                          child: Image.asset(
                        'assets/images/image2.jpeg',
                        width: 40,
                        height: 40,
                      )),
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
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black12),
                        child: const Center(
                          child: Text('+3',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
