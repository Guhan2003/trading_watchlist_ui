import 'package:flutter/material.dart';

class ScriptComponent extends StatelessWidget {
  final String title;
  final String exchange;
  final String fireSpreadValue;
  final String secondSpreadValue;
  final String cpm;
  final String performance;
  final bool isUp;

  const ScriptComponent({
    super.key,
    required this.title,
    required this.exchange,
    required this.fireSpreadValue,
    required this.secondSpreadValue,
    required this.cpm,
    required this.performance,
    required this.isUp,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Row(
        children: [
          Text(exchange),
          const SizedBox(width: 4),
          Text(fireSpreadValue),
          const SizedBox(width: 4),
          Text(secondSpreadValue),
        ],
      ),
      trailing: SizedBox(
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(isUp ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
                const SizedBox(width: 4),
                Text(cpm),
              ],
            ),
            const SizedBox(height: 4),
            Text(performance),
          ],
        ),
      ),
    );
  }
}
