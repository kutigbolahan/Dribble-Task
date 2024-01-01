import 'package:flutter/material.dart';
import 'package:task/BoardsScreen.dart';
import 'package:task/taskScreen.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
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
        body: Column(
      children: [
        TabBar(
          //   dividerColor: appColors.transparent,
          padding: const EdgeInsets.all(3),
          onTap: (index) {},
          // unselectedLabelColor:
          //     appColors.greyFF474747.withOpacity(0.8),
          //  labelColor: appColors.white,
          indicator: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(9)),
            //  color: appColors.blue316CF4,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
              ),
            ],
          ),
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
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              TaskScreen(),
              BoardsScreen(),
            ],
          ),
        ),
      ],
    ));
  }
}
