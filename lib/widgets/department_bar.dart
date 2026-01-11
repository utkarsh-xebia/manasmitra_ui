import 'package:flutter/material.dart';

class DepartmentBar extends StatelessWidget {
  final String department;
  final int percent;
  final Color color;
  final String risk;

  const DepartmentBar({
    super.key,
    required this.department,
    required this.percent,
    required this.color,
    required this.risk,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(department, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text("$percent%"),
            ],
          ),
          const SizedBox(height: 6),
          LinearProgressIndicator(
            value: percent / 100,
            color: color,
            backgroundColor: color.withOpacity(0.15),
            minHeight: 8,
          ),
          const SizedBox(height: 4),
          Text(
            "Risk: $risk",
            style: TextStyle(color: color, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
