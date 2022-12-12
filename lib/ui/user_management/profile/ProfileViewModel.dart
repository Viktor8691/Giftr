import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:giftr/core/data/network/module/profile/UploadAvatarReq.dart';
import 'package:giftr/extension/Extension.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import 'ProfileInteractor.dart';

@injectable
class ProfileViewModel extends BaseViewModel {

  final ProfileInteractor _interactor;
  ProfileViewModel(this._interactor);

  final ImagePicker _picker = ImagePicker();

  @override
  void init() {}

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