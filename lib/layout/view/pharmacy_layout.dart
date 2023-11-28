import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/layout/cubit/cubit.dart';
import 'package:pharmacy_project/layout/cubit/states.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            AppCubit cubit = AppCubit.get(context);
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: NavigationRail(
                        onDestinationSelected: (int index) {
                          cubit.changeSelectedSideBarItem(index);
                        },
                        backgroundColor: Colors.grey[200],
                        destinations: cubit.navigationRailItem,
                        selectedIndex: cubit.currentIndex,
                        labelType: NavigationRailLabelType.selected,
                        minWidth: MediaQuery.of(context).size.width * 0.06,
                      ),
                    ),
                    Expanded(
                      child: cubit.screens[cubit.currentIndex],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
