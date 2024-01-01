import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageDetails extends StatelessWidget {
  const HomePageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: const Icon(
                      CupertinoIcons.arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(2),
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.black, width: 0.5)),
                child: const Center(
                  child: Text('Sweet Home',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Grocery\nShopping',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 54,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Time Left',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          )),
                      Text('2h 45m',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('Dec 12, 2022',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Assignee',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
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
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text('Additional Description',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'We have to buy some tresh bread, fruit, and \nvegetables.Supply of water Is running out.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(
                height: 30,
              ),
              Text('Created ',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text('Dec 10, by Matt',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipOval(
                      child: Image.asset(
                    'assets/images/image3.jpeg',
                    width: 20,
                    height: 20,
                  )),
                ],
              ),
              const Spacer(),
              Center(
                child: Container(
                    padding: const EdgeInsets.all(2),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(900),
                      //  border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(
                            Icons.check,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        const Center(
                          child: Text('Set as done',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
