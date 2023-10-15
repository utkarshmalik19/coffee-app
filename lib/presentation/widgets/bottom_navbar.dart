
import 'package:coffee_app/presentation/screens/cart_page.dart';
import 'package:coffee_app/presentation/screens/home_screen.dart';
import 'package:coffee_app/presentation/screens/profile_page.dart';
import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
      var _currentIndex = 0;
      List<Widget> navBarPages = [HomeScreen(), CartPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Theme(

          data: Theme.of(context).copyWith(
            // Change the selected item color here
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: AppConstants.orange,
              
              unselectedItemColor: Colors.white,
              
            ),
          ),
          child: BottomNavigationBar(
            
            iconSize: 30,
            backgroundColor: AppConstants.bgColor,
            currentIndex: _currentIndex,
            onTap: (index) {
              // Handle tab selection here
              Navigator.of(context).pushNamed(
                    '/cart_page',
                  );
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                
                icon: Icon(Icons.person),
                label: 'Profile' ,
              ),
            ],
          ),
        ),
    );
  }
}
// import 'package:coffee_app/utils/consts.dart';
// import 'package:flutter/material.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int pageIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       decoration: BoxDecoration(
//         color: AppConstants.orange,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 0;
//                 Navigator.of(context).pushNamed(
//                   '/home',
//                 );
//               });
//             },
//             icon: pageIndex == 0
//                 ? const Icon(
//                     Icons.home_filled,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.home_filled,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 1;
//                 Navigator.of(context).pushNamed(
//                   '/create_activity',
//                 );
//               });
//             },
//             icon: pageIndex == 1
//                 ? const Icon(
//                     Icons.edit_note,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.edit_note,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 2;
//                 Navigator.of(context).pushNamed(
//                   '/cart_page',
//                 );
//               });
//             },
//             icon: pageIndex == 2
//                 ? const Icon(
//                     Icons.shopping_cart,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.shopping_cart,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 3;
//                 Navigator.of(context).pushNamed(
//                   '/profile',
//                 );
//               });
//             },
//             icon: pageIndex == 3
//                 ? const Icon(
//                     Icons.person,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.person,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }
