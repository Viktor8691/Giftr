import 'package:giftr/base/Interactor.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/network/module/auth/LoginRes.dart';
import '../../../core/data/network/module/profile/UploadAvatarReq.dart';
import '../../../core/data/network/module/profile/UploadAvatarRes.dart';
import '../../../core/data/network/repository/ProfileRepo.dart';

@injectable
class ProfileInteractor extends Interactor{
  final ProfileRepo _profileRepo;
  ProfileInteractor(this._profileRepo);

  Future<User?> uploadAvatar(UploadAvatarReq request) async {
    showLoading();
    final response = await _profileRepo.uploadAvatar(request);
    hideLoading();
    return response.fold((l) {
      return null;
    }, (r) {
      return UploadAvatarRes.fromJson(r.data).data.user;
    });
  }
}