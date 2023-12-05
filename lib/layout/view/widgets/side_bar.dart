import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy_project/layout/cubit/cubit.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
    required this.cubit,
    required this.navigationRailItem,
  });

  final AppCubit cubit;
  final List<NavigationRailDestination> navigationRailItem;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: NavigationRail(
          onDestinationSelected: (int index) {
            cubit.changeSelectedSideBarItem(index);
          },
          minWidth: MediaQuery.of(context).size.width * 0.07,
          destinations: navigationRailItem,
          selectedIndex: cubit.currentIndex,
          labelType: NavigationRailLabelType.all,
          trailing: Expanded(
            child: Column(
              children: [
                const Spacer(),
                SvgPicture.asset(
                  'assets/images/Remedy-rafiki.svg',
                  height: 100,
                  width: 50,
                ),
              ],
            ),
          )),
    );
  }
}
