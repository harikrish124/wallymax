import 'package:flutter/material.dart';

class SearchBarW extends StatelessWidget {
  const SearchBarW({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Flexible(
              flex: 4,
              child: SearchBar(
                hintText: "Find Wallpaper",
                trailing: [Icon(Icons.search)],
              ),
            ),
            Flexible(
              flex: 0,
              child: Badge(
                label: const Text("1"),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    size: 36,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
