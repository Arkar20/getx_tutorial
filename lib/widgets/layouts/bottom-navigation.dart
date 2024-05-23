import 'package:flutter/material.dart';
import 'package:getx_tutorial/store/bottom-navigation.dart';
import "package:get/get.dart";

class BottomNavigationFooter extends StatelessWidget {
  const BottomNavigationFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());
    return Obx(() => MediaQuery(
        data:
            MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(0.8)),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: bottomNavigationController.changeTabIndex,
            currentIndex: bottomNavigationController.tabIndex.value,
            backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 12),
            selectedLabelStyle: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12),
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.shop,
                    size: 20.0,
                  ),
                ),
                label: 'POS',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.store,
                    size: 20.0,
                  ),
                ),
                label: 'Orders',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
            ],
          ),
        )));
  }
}
