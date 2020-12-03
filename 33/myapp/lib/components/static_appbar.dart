import 'package:flutter/material.dart';

AppBar staticAppbar({String title, PreferredSize bottomWidget, List<Widget> action}) => AppBar(
      leading: BackButtonWidget(),
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF006465),
      elevation: 0,
      title: FittedBox(
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        fit: BoxFit.fitWidth,
      ),
      centerTitle: true,
      bottom: bottomWidget,
      actions: action,
    );

class BackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: ImageIcon(AssetImage("assets/arrow_left.png")),
      onPressed: () => Navigator.of(context).pop(),
      color: Colors.white,
    );
  }
}
