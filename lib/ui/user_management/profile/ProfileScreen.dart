import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/di/Injection.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';
import 'package:giftr/extension/WidgetExtension.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:giftr/ui/user_management/profile/ProfileViewModel.dart';
import '../../../constants/AppColors.dart';
import '../../../main.dart';

class ProfileScreen extends StatelessWidget {

  final ProfileViewModel _viewModel = getIt<ProfileViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'), backgroundColor: AppColors.colorPrimary, elevation: 1,
      ),
      body: ChangeNotifierProvider(
        create: (_) => _viewModel,
        child: Consumer<ProfileViewModel>(
          builder: (context, viewModel, _){
            return [
              80.toVerticalSizedBox,
              Stack(
                children: [
                  appUser!.avatar.toNetworkImage(width: 100, height: 100, borderRadius: 50),
                  Positioned(
                      bottom: -10, right: -10,
                      child: IconButton(onPressed: () {_selectImageSource();}, icon: FaIcon(FontAwesomeIcons.penToSquare)))
                ],
              ),

              40.toVerticalSizedBox,
              ['Name : '.toText(), appUser!.name.toText(fontSize: 18)].toRow(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center),

              10.toVerticalSizedBox,
              ['Email : '.toText(), appUser!.email.toText(fontSize: 18)].toRow(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center),

              10.toVerticalSizedBox,
              ['Phone : '.toText(), appUser!.phone_no.toText(fontSize: 18)].toRow(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center),

              30.toVerticalSizedBox,
              'Update Profile'.toButton(() {}, width: 150),

              50.toVerticalSizedBox,
              'Logout'.toTextButton(() {})
            ].toColumn(crossAxisAlignment: CrossAxisAlignment.center);
          },
        ),
      )
    );
  }

  void _selectImageSource(){
    showDialog(
        context: appRouter.root.navigatorKey.currentContext!,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  20.toVerticalSizedBox,
                  'Open Camera'.toTextButton(() {
                    appRouter.pop();
                    _viewModel.pickupImage(ImageSource.camera);
                  }, width: double.infinity),

                  'Open Gallery'.toTextButton(() {
                    appRouter.pop();
                    _viewModel.pickupImage(ImageSource.gallery);
                  }, width: double.infinity),

                  20.toVerticalSizedBox,
                ],
              ),
            ),
          );
        }
    );
  }
}
