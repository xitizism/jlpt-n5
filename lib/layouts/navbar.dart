import 'package:flutter/material.dart';
import '../settings.dart';
import '../test.dart'; // Import the TestPage

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  final Function(bool) onDarkModeToggle;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.onDarkModeToggle,
  });

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  void _playAnimation() {
    _animationController.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: (index) {
        if (index == 1) {
          openTestPage(context); // Open TestPage if Tests icon is tapped
        } else if (index == 2) {
          openSettingsScreen(context); // Open SettingsScreen if Settings icon is tapped
        } else {
          widget.onTap(index);
          _playAnimation();
        }
      },
      items: [
        _buildNavItem(Icons.home, 'Home', 0),
        _buildNavItem(Icons.assignment, 'Tests', 1),
        _buildSettingsNavItem(),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      type: BottomNavigationBarType.fixed,
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: TweenAnimationBuilder<double>(
        tween: Tween<double>(
          begin: 1.0,
          end: index == widget.currentIndex ? 1.25 : 1.0,
        ),
        duration: const Duration(milliseconds: 300),
        builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: child,
          );
        },
        child: Icon(icon),
      ),
      label: label,
    );
  }

  BottomNavigationBarItem _buildSettingsNavItem() {
    return BottomNavigationBarItem(
      icon: TweenAnimationBuilder<double>(
        tween: Tween<double>(
          begin: 1.0,
          end: 2 == widget.currentIndex ? 1.25 : 1.0,
        ),
        duration: const Duration(milliseconds: 300),
        builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: child,
          );
        },
        child: const Icon(Icons.settings),
      ),
      label: 'Settings',
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

void openSettingsScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SettingsScreen()),
  );
}

void openTestPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const TestPage()),
  );
}
