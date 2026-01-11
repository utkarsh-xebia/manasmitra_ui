import 'package:flutter/material.dart';
import 'widgets/sidebar.dart';
import 'widgets/stat_card.dart';
import 'widgets/department_bar.dart';

class HRDashboard extends StatelessWidget {
  const HRDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Sidebar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  const SizedBox(height: 24),
                  _buildStatsRow(),
                  const SizedBox(height: 24),
                  Expanded(child: _buildMainContent()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "HR Central Portal",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Managing company wellbeing and burnout prevention",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 260,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Search metrics...",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(width: 16),
            const Icon(Icons.settings),
            const SizedBox(width: 16),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatsRow() {
    return Row(
      children: const [
        StatCard(
          title: "Company Wellbeing Score",
          value: "76/100",
          subtitle: "↑ 4% from last month",
          color: Colors.green,
          icon: Icons.favorite,
        ),
        StatCard(
          title: "Employees at Risk",
          value: "12%",
          subtitle: "↓ 2% from last month",
          color: Colors.orange,
          icon: Icons.warning,
        ),
        StatCard(
          title: "Active Programs",
          value: "8",
          subtitle: "↑ 1% from last month",
          color: Colors.blue,
          icon: Icons.track_changes,
        ),
        StatCard(
          title: "Response Rate",
          value: "92%",
          subtitle: "↑ 5% from last month",
          color: Colors.purple,
          icon: Icons.group,
        ),
      ],
    );
  }

  Widget _buildMainContent() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
              child: Text(
                "Burnout Risk Distribution\n(Donut Chart Placeholder)",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Departmental Health Overview",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  DepartmentBar(
                    department: "Engineering",
                    percent: 78,
                    color: Colors.green,
                    risk: "Low",
                  ),
                  DepartmentBar(
                    department: "Design",
                    percent: 62,
                    color: Colors.orange,
                    risk: "Medium",
                  ),
                  DepartmentBar(
                    department: "Sales",
                    percent: 45,
                    color: Colors.red,
                    risk: "High",
                  ),
                  DepartmentBar(
                    department: "Marketing",
                    percent: 82,
                    color: Colors.green,
                    risk: "Low",
                  ),
                  DepartmentBar(
                    department: "HR",
                    percent: 88,
                    color: Colors.green,
                    risk: "Low",
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
