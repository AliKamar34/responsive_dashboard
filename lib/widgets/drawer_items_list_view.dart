import 'package:flutter/material.dart';
import 'package:newrespoapp/models/drawer_item_model.dart';
import 'package:newrespoapp/utils/app_images.dart';
import 'package:newrespoapp/widgets/drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({
    super.key,
  });

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransaction),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatisticcs),
    const DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyinvestments),
  ];

  int selctedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {
            if (selctedItem != index) {
              setState(() {
                selctedItem = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: selctedItem == index,
            ),
          ),
        );
      }),
    );
  }
}
