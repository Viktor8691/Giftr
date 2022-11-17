import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/constants/AppConstants.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignupViewModel extends BaseViewModel {

  Gender gender = Gender.Male;
  String birthday = "mm/dd/yy";

  @override
  void init() {}
}