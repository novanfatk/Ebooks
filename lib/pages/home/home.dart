import 'package:ebooks/constants/colors.dart';
import 'package:ebooks/pages/home/widgets/custom_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: Column(
          children: [
            CustomTab(tabIndex, (int index) {
              setState(() {
                tabIndex = index;
              });
              pageController.jumpToPage(index);
            })
          ],
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.black,
          )),
      title:
          const Text('All Books', style: TextStyle(color: kFont, fontSize: 18)),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: kFont,
            ))
      ],
    );
  }
}
