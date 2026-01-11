import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.favorite, color: Colors.green),
              SizedBox(width: 8),
              Text(
                "WellBeing",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 32),
          _menuItem(Icons.dashboard, "Dashboard"),
          _menuItem(Icons.analytics, "Analytics"),
          _menuItem(Icons.groups, "Team Health"),
          _menuItem(Icons.favorite_border, "Programs"),
          _menuItem(Icons.notifications, "Notifications"),
          _menuItem(Icons.security, "Security"),
          const Spacer(),
          const Text("VIEWING AS", style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 8),
          _roleChip("HR", selected: true),
          _roleChip("Manager"),
          _roleChip("Employee"),
        ],
      ),
    );
  }

  Widget _menuItem(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          const SizedBox(width: 12),
          Text(label),
        ],
      ),
    );
  }

  Widget _roleChip(String label, {bool selected = false}) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(color: selected ? Colors.white : Colors.black),
      ),
    );
  }
}
