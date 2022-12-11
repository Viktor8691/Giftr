import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/ui/customer/friend_gift/FriendGiftScree.dart';
import 'package:giftr/ui/customer/main/CustomerMainViewModel.dart';
import 'package:giftr/ui/customer/my_gift/MyGiftScreen.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart';

import '../../../constants/AppColors.dart';
import '../home/HomeScreen.dart';

class CustomerMainScreen extends StatefulWidget {
  @override
  State<CustomerMainScreen> createState() => _CustomerMainScreenState();
}

class _CustomerMainScreenState extends State<CustomerMainScreen> {

  final CustomerMainViewModel _viewModel = getIt<CustomerMainViewModel>();

  int _currentTab = 0;
  final _homeScreen = HomeScreen();
  final _myGiftScreen = MyGiftScreen();
  final _friendGiftScreen = FriendGiftScreen();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: ChangeNotifierProvider(
        create: (_) => _viewModel,
        child: Consumer<CustomerMainViewModel>(
          builder: (context, viewModel, _) {
            if (viewModel.notifications.isNotEmpty) {_homeScreen.viewModel.showNotificationBadge(viewModel.notifications);}
            return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: true,
                currentIndex: _currentTab,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white60,
                backgroundColor: AppColors.colorPrimary,
                items: [
                  BottomNavigationBarItem(
                      icon: Badge(
                        elevation: 0,
                        showBadge: viewModel.notifications.isNotEmpty,
                        toAnimate: false,
                        badgeContent: Text(''), child: Icon(Icons.home),),
                      label: 'Home', backgroundColor: AppColors.colorPrimary),
                  BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'MyGift', backgroundColor: AppColors.colorPrimary),
                  BottomNavigationBarItem(icon: Icon(Icons.volunteer_activism), label: 'FriendGift', backgroundColor: AppColors.colorPrimary),
                ],
                onTap: (value){
                  setState(() {
                    _currentTab = value;
                  });
                },
              ),
              body: IndexedStack(
                index: _currentTab,
                children: [
                  _homeScreen,
                  _myGiftScreen,
                  _friendGiftScreen
                ],
              ),
            );
          },
        ),
      )
    );
  }
}