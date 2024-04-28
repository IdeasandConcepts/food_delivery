import 'package:flutter/material.dart';

class RowIcons extends StatelessWidget {
  const RowIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
         // border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide.)
      ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //* #1
            Row(
              children: [
                Icon(Icons.sort),
                SizedBox(
                  width: 5,
                ),
                Text('Filters'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.wifi_protected_setup_outlined),
                SizedBox(
                  width: 5,
                ),
                Text('Price: lowest to high'),
              ],
            ),
            Icon(Icons.grid_view_rounded),

          ],
        ),
      ),
    );
  }
}
