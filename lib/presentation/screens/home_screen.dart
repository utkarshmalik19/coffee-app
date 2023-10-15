import 'package:coffee_app/presentation/widgets/bottom_navbar.dart';
import 'package:coffee_app/presentation/widgets/circle_indicator.dart';
import 'package:coffee_app/presentation/widgets/custom_searchbar.dart';
import 'package:coffee_app/presentation/widgets/specials_banner.dart';
import 'package:coffee_app/presentation/widgets/tab_bar_page.dart';
import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  // String searchText = '';

  // Define the available tabs
  final List<Tab> tabs = [
    const Tab(text: 'Coffee'),
    const Tab(text: 'Tea'),
    const Tab(text: 'Dessert'),
    const Tab(
      text: 'Snacks',
    )
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: AppConstants.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 6, top: 16, right: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to our Coffee Shop",
                    style: AppConstants.headerTextStyle,
                  ),
                 
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: CustomSearchbar(),
                  ),
                  // Specials Banner
                  const SizedBox(
                    width: 350,
                    height: 200,
                    child: SpecialsBanner(),
                  ),
                  const SizedBox(height: 20),
                  // Tab Bar
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        indicator:
                            CircleTabIndicator(color: Colors.white, radius: 3),
                        labelPadding:
                            const EdgeInsets.only(left: 10, right: 30),
                        isScrollable: true,
                        labelColor: AppConstants.orange,
                        unselectedLabelColor: Colors.grey,
                        controller: tabController,
                        tabs: [
                          Tab(
                            text: "Coffee",
                          ),
                          Tab(
                            text: "Tea",
                          ),
                          Tab(
                            text: "Dessert",
                          ),
                          Tab(
                            text: "Snacks",
                          )
                        ]),
                  ),
                  //Tab Bar view
                  SizedBox(
                    width: double.maxFinite,
                    height: 300,
                    child: TabBarView(controller: tabController, children: [
                      TabBarPage(),
                      TabBarPage(),
                      TabBarPage(),
                      TabBarPage()
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
