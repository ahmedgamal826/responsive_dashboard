import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  DashBoardView({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: Colors.blue,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF5F5F5),
      drawer:
          MediaQuery.of(context).size.width < 800 ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
