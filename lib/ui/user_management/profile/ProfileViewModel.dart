import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/profile/UploadAvatarReq.dart';
import 'package:giftr/core/routes/Route.gr.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:giftr/main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/session/ISessionHelper.dart';
import 'ProfileInteractor.dart';

@injectable
class ProfileViewModel extends BaseViewModel {

  final ProfileInteractor _interactor;
  final ISessionHelper _sessionHelper;
  ProfileViewModel(this._interactor, this._sessionHelper);

  final ImagePicker _picker = ImagePicker();

  @override
  void init() {}

  void logout(){
    _sessionHelper.clearSession();
    appUser = null;
    appRouter.pushAndPopUntil(LoginScreenRoute(), predicate: (f) => false);
  }

  void pickupImage(ImageSource imageSource) async{
    final XFile? imageFile = await _picker.pickImage(source: imageSource);
    if (imageFile == null) return;

    var request = UploadAvatarReq(appUser!.id);
    request.filePath = imageFile.path;

    final response = await _interactor.uploadAvatar(request);
    response?.let((it) {
      appUser = it;
      notifyListeners();
    });
  }
}