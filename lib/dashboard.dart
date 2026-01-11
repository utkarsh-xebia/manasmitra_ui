import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  // Dummy values (later from API)
  final String phqSeverity = "Mild";
  final int phqScore = 72;
  final int hrvScore = 65;
  final int mwiScore = 69;
  final String riskZone = "Yellow";

  Color getRiskColor(String zone) {
    switch (zone) {
      case "Green":
        return Colors.green;
      case "Yellow":
        return Colors.orange;
      case "Red":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mental Wellness Dashboard"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _buildCard(
              title: "PHQ-9 Psychological Model",
              content: [
                "Severity: $phqSeverity",
                "Wellness Score: $phqScore / 100",
              ],
              icon: Icons.psychology,
              color: Colors.blue,
            ),
            const SizedBox(height: 16),

            _buildCard(
              title: "Physiological Model (HRV)",
              content: [
                "Stress Score: $hrvScore / 100",
                "Stress Level: Medium",
              ],
              icon: Icons.favorite,
              color: Colors.purple,
            ),
            const SizedBox(height: 16),

            _buildCard(
              title: "Hybrid Fusion Model (MWI)",
              content: [
                "Mental Wellness Index: $mwiScore / 100",
                "Risk Zone: $riskZone",
              ],
              icon: Icons.auto_graph,
              color: getRiskColor(riskZone),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required List<String> content,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color, size: 28),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
            const Divider(),
            ...content.map(
              (text) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
