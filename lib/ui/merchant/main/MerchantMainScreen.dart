import 'package:flutter/material.dart';
import 'package:giftr/ui/merchant/service/ServiceScreen.dart';
import 'package:giftr/ui/merchant/store/StoreScreen.dart';
import 'package:giftr/ui/withdraw/WithdrawScreen.dart';

import '../../../constants/AppColors.dart';

class MerchantMainScreen extends StatefulWidget {

  @override
  State<MerchantMainScreen> createState() => _MerchantMainScreenState();
}

class _MerchantMainScreenState extends State<MerchantMainScreen> {

  int _currentTab = 0;
  final _serviceScreen = ServiceScreen();
  final _storeScreen = StoreScreen();
  final _withdrawScreen = WithdrawScreen();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: _currentTab,
            unselectedItemColor: Colors.white60,
            backgroundColor: AppColors.colorPrimary,
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Service', backgroundColor: AppColors.colorPrimary),
              BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store', backgroundColor: AppColors.colorPrimary),
              BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Withdraw', backgroundColor: AppColors.colorPrimary),
            ],
            onTap: (value) {
              setState(() {_currentTab = value;});
            },
          ),
          body: IndexedStack(
            index: _currentTab,
            children: [
              _serviceScreen,
              _storeScreen,
              _withdrawScreen
            ],
          ),
        )
    );
  }
}
