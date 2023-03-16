import 'package:flutter/material.dart';

import '../../../../../app/app_colors.dart';

class WebblenHomePageTabBar extends StatelessWidget {
  final TabController? tabController;
  const WebblenHomePageTabBar({this.tabController});

  final FontWeight fontWeight = FontWeight.w600;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.only(bottom: 4),
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        labelPadding: const EdgeInsets.symmetric(horizontal: 10),
        indicatorColor: appActiveColor(),
        labelColor: Colors.white,
        unselectedLabelColor: appInActiveColorAlt(),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appActiveColor(),
        ),
        tabs: [
          Tab(
            child: Container(
              height: 30,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                child: Text(
                  'Posts',
                  style: TextStyle(fontWeight: fontWeight),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 30,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                child: Text(
                  'Streams',
                  style: TextStyle(fontWeight: fontWeight),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 30,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                child: Text(
                  'Events',
                  style: TextStyle(fontWeight: fontWeight),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WebblenAllSearchResultsTabBar extends StatelessWidget {
  final TabController? tabController;
  const WebblenAllSearchResultsTabBar({this.tabController});

  @override
  Widget build(BuildContext context) {
    final FontWeight fontWeight = FontWeight.w600;
    return Container(
      height: 30,
      padding: const EdgeInsets.only(bottom: 4),
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        labelPadding: const EdgeInsets.symmetric(horizontal: 10),
        indicatorColor: appActiveColor(),
        labelColor: Colors.white,
        unselectedLabelColor: appInActiveColorAlt(),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appActiveColor(),
        ),
        tabs: [
          Tab(
            child: Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                child: Text(
                  'Posts',
                  style: TextStyle(fontWeight: fontWeight),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                child: Text(
                  'Streams',
                  style: TextStyle(fontWeight: fontWeight),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                child: Text(
                  'Events',
                  style: TextStyle(fontWeight: fontWeight),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 30,
              width: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                child: Text(
                  'People/Groups',
                  style: TextStyle(fontWeight: fontWeight),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WebblenProfileTabBar extends StatelessWidget {
  final TabController? tabController;
  const WebblenProfileTabBar({this.tabController});

  @override
  Widget build(BuildContext context) {
    final FontWeight fontWeight = FontWeight.w600;
    return Container(
      height: 35,
      color: appBackgroundColor(),
      padding: const EdgeInsets.only(top: 4, bottom: 8),
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        labelPadding: const EdgeInsets.symmetric(horizontal: 10),
        indicatorColor: appActiveColor(),
        labelColor: Colors.white,
        unselectedLabelColor: appInActiveColorAlt(),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appActiveColor(),
        ),
        tabs: [
          Tab(
            child: Container(
              height: 30,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                child: Text(
                  'Posts',
                  style: TextStyle(fontWeight: fontWeight),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 30,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                child: Text(
                  'Events',
                  style: TextStyle(fontWeight: fontWeight),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 30,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Streams",
                  style: TextStyle(fontWeight: fontWeight),
                ),
              ),
            ),
          ),
          // Tab(
          //   child: Container(
          //     height: 30,
          //     width: 75,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(60),
          //     ),
          //     child: Align(
          //       child: Text(
          //         'Shop',
          //         style: TextStyle(fontWeight: fontWeight),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class WebblenWalletTabBar extends StatelessWidget {
  final TabController? tabController;
  const WebblenWalletTabBar({this.tabController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        // labelPadding: EdgeInsets.symmetric(horizontal: 10),
        indicatorColor: appActiveColor(),
        labelColor: Colors.white,
        unselectedLabelColor: appInActiveColorAlt(),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: appActiveColor(),
        ),
        tabs: [
          Tab(
            child: Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Align(
                child: Text(
                  'Assets',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Align(
                child: Text(
                  'Tickets',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Align(
                child: Text(
                  'NFTs',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WebblenPastCheckInsTabBar extends StatelessWidget {
  final TabController? tabController;
  const WebblenPastCheckInsTabBar({this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: appBackgroundColor(),
      // padding: EdgeInsets.only(top: 4, bottom: 8),
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        // labelPadding: EdgeInsets.symmetric(horizontal: 10),
        indicatorColor: appActiveColor(),
        labelColor: Colors.white,
        unselectedLabelColor: appInActiveColorAlt(),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: appActiveColor(),
        ),
        tabs: [
          Tab(
            child: Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Align(
                child: Text(
                  'Events',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Align(
                child: Text(
                  'Streams',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WebblenEventHostEventsTabBar extends StatelessWidget {
  final TabController? tabController;
  const WebblenEventHostEventsTabBar({this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: appBackgroundColor(),
      // padding: EdgeInsets.only(top: 4, bottom: 8),
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        // labelPadding: EdgeInsets.symmetric(horizontal: 10),
        indicatorColor: appActiveColor(),
        labelColor: Colors.white,
        unselectedLabelColor: appInActiveColorAlt(),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: appActiveColor(),
        ),
        tabs: [
          Tab(
            child: Container(
              height: 20,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Align(
                child: Text(
                  'Live',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 20,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Align(
                child: Text(
                  'Past',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 20,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Align(
                child: Text(
                  'Delegated',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WebblenUserPurchasesTabBar extends StatelessWidget {
  final TabController? tabController;
  const WebblenUserPurchasesTabBar({this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: appBackgroundColor(),
      // padding: EdgeInsets.only(top: 4, bottom: 8),
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        // labelPadding: EdgeInsets.symmetric(horizontal: 10),
        indicatorColor: appActiveColor(),
        labelColor: Colors.white,
        unselectedLabelColor: appInActiveColorAlt(),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: appActiveColor(),
        ),
        tabs: [
          Tab(
            child: Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Align(
                child: Text(
                  'Purchases',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Align(
                child: Text(
                  'Tickets',
                  style: TextStyle(
                    fontSize: 14,
                    // color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
