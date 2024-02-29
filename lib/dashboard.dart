import 'package:flutter/material.dart';
import 'about_us_page.dart';
import 'help_support_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bus Tracking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  final List<String> _pageTitles = ['Dashboard', 'Notifications', 'Profile'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pageTitles[_selectedIndex],
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: _getWidgetForIndex(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard, color: Colors.black),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _getWidgetForIndex(int index) {
    switch (index) {
      case 0:
        return const DashboardView();
      case 1:
        return const NotificationsView();
      case 2:
        return const ProfileView();
      default:
        return const Center(
          child: Text('Invalid Page'),
        );
    }
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildDashboardButton(Icons.map, 'Map View', () {
          // Handle map view button tap
        }),
        const SizedBox(height: 50),
        _buildDashboardButton(Icons.schedule, 'Time Tables', () {
          // Handle time tables button tap
        }),
        const SizedBox(height: 20),
        _buildDashboardButton(Icons.location_on, 'Near Bus Stand', () {
          // Handle near bus stand button tap
        }),
      ],
    );
  }

  Widget _buildDashboardButton(
      IconData iconData, String label, VoidCallback onTap) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(
          iconData,
          size: 70,
          color: Colors.blue,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: onTap,
          child: Text(label),
        ),
      ],
    );
  }
}

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Notifications Content'),
    );
  }
}
