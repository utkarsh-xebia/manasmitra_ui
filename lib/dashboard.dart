import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildInfoBanner(),
            const SizedBox(height: 16),
            _buildStatsRow(),
            const SizedBox(height: 16),
            Expanded(child: _buildMainContent()),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      title: Row(
        children: const [
          Icon(Icons.favorite, color: Colors.green),
          SizedBox(width: 8),
          Text(
            "ManasMitra",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 8),
          Text(
            "ADMIN PANEL · PRIVACY-FIRST",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
      actions: const [
        Icon(Icons.notifications_none, color: Colors.black),
        SizedBox(width: 16),
        CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(Icons.shield, color: Colors.white),
        ),
        SizedBox(width: 16),
      ],
    );
  }

  Widget _buildInfoBanner() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFEFFCF3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        "All individual identity data is obfuscated. Reports are only generated for teams of 5+ members to ensure psychological safety and anonymity.",
        style: TextStyle(color: Colors.green),
      ),
    );
  }

  Widget _buildStatsRow() {
    return Row(
      children: [
        _statCard("ORG WELLBEING SCORE", "74", "+2.4% vs last mo", Icons.favorite, Colors.green),
        _statCard("ACTIVE PARTICIPATION", "88%", "432 employees", Icons.group, Colors.blue),
        _statCard("BURNOUT RISK INDEX", "Low", "Stable trajectory", Icons.trending_up, Colors.orange),
        _statCard("PENDING SIGNALS", "3", "High priority alerts", Icons.error, Colors.red),
      ],
    );
  }

  Widget _statCard(
    String title,
    String value,
    String subtitle,
    IconData icon,
    Color color,
  ) {
    return Expanded(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  Icon(icon, color: color),
                ],
              ),
              const SizedBox(height: 12),
              Text(value, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(subtitle, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainContent() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Mental Wellness Index",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Aggregated organizational trend over 6 months",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: Center(
                      child: Text(
                        "📈 Chart Placeholder\n(Connect to Recharts / Syncfusion later)",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 2,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Recent Alerts",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  _AlertItem(
                    color: Colors.red,
                    title: "Operations Team Decline",
                    subtitle: "Score dropped by 15 pts in 2 weeks",
                  ),
                  _AlertItem(
                    color: Colors.blue,
                    title: "New Program Opportunity",
                    subtitle: "High stress signal in Dev during sprints",
                  ),
                  _AlertItem(
                    color: Colors.green,
                    title: "Monthly Survey Peak",
                    subtitle: "Engagement reached 92% this week",
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

class _AlertItem extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;

  const _AlertItem({
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(Icons.circle, size: 10, color: color),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
