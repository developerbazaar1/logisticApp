import 'package:logistic/screens/add_user_screen.dart';
import 'package:logistic/screens/home_screen.dart';
import 'package:logistic/screens/profile_screen.dart';
import 'package:logistic/screens/view_user_screen.dart';
import 'package:logistic/utils/barrel.dart';
import 'package:logistic/utils/icons.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    AddUserScreen(),
    const ViewUserScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_currentIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: LogisticColors.black,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: LogisticColors.white,
          unselectedItemColor: LogisticColors.grey,
          selectedLabelStyle: const TextStyle(color: LogisticColors.white),
          unselectedLabelStyle: const TextStyle(color: LogisticColors.grey),
          items: [
            BottomNavigationBarItem(
                icon: _currentIndex == 0
                    ? Image.asset(LogisticIcons.home)
                    : Image.asset(LogisticIcons.unselectedHome),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: _currentIndex == 1
                    ? Image.asset(LogisticIcons.addUser)
                    : Image.asset(LogisticIcons.unselectedAddUser),
                label: 'Add User'),
            BottomNavigationBarItem(
                icon: _currentIndex == 2
                    ? Image.asset(LogisticIcons.viewUsers)
                    : Image.asset(LogisticIcons.unselectedViewUsers),
                label: 'View Users'),
            BottomNavigationBarItem(
                icon: _currentIndex == 3
                    ? Image.asset(LogisticIcons.profile)
                    : Image.asset(LogisticIcons.unselectedProfile),
                label: 'Profile')
          ],
        ),
      ),
    );
  }
}
