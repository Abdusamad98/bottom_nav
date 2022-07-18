import 'package:flutter/material.dart';

class MySelectableItem extends StatefulWidget {
  const MySelectableItem(
      {Key? key, required this.isSelected, required this.onChanged})
      : super(key: key);

  final bool isSelected;
  final ValueChanged<bool> onChanged;

  @override
  State<MySelectableItem> createState() => _MySelectableItemState();
}

class _MySelectableItemState extends State<MySelectableItem> {
  bool isSelected = false;

  @override
  void initState() {
    isSelected = widget.isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 56,
      child: TextButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
            widget.onChanged.call(isSelected);
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("button"),
            Switch(
                value: isSelected,
                onChanged: (va) {
                  setState(() {
                    isSelected = va;
                    widget.onChanged.call(isSelected);
                  });
                }),
          ],
        ),
      ),
    );
  }
}
