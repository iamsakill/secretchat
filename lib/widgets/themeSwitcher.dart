import 'package:flutter/material.dart';

class Themeswitcher extends StatefulWidget {
  const Themeswitcher({super.key});

  @override
  State<Themeswitcher> createState() => _ThemeswitcherState();
}

class _ThemeswitcherState extends State<Themeswitcher> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Text(
            "Theme Mode",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(
                  value: isChecked,
                  onChanged: (value) {
                    isChecked = value;
                    setState(() {});
                  }),
              Text(isChecked ? "Dark mode" : "Light Mode"),
            ],
          ),
        ],
      ),
    );
  }
}
