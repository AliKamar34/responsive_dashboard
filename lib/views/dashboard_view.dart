import 'package:flutter/material.dart';
import 'package:newrespoapp/utils/size_confige.dart';
import 'package:newrespoapp/widgets/custom_drawer.dart';
import 'package:newrespoapp/widgets/dashboard_disktop_layout.dart';
import 'package:newrespoapp/widgets/adaptive_layout_widget.dart';
import 'package:newrespoapp/widgets/dashboard_mobile_layout.dart';
import 'package:newrespoapp/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < SizeConfige.tablet
          ? const CustomDrawer()
          : null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfige.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xfffafafa),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDisktopLayout(),
      ),
    );
  }
}
