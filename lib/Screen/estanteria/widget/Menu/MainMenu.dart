import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:viewpdf/Colors/ColorA.dart';
import 'package:viewpdf/providers/SelectProvider.dart';

class MainMenu extends StatelessWidget {
  final Function(int) onTap;
  const MainMenu({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<SelectProvider>(context);
    return ConvexAppBar(
      color: ColorA.paleCerulean,
      backgroundColor: ColorA.bdazzledBlue,
      activeColor: ColorA.lightCyan,
      items: [
        TabItem(icon: Icons.menu_book, title: 'Temporal'),
        TabItem(icon: Icons.auto_stories, title: 'guardados'),
        TabItem(icon: Icons.tune, title: 'Configurar'),
      ],
      onTap: (val) {
        onTap(val);
        pro.cancel();
      },
    );
  }
}
