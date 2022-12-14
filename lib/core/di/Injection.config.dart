// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i17;

import '../../ui/customer/friend_gift/FriendGiftInteractor.dart' as _i28;
import '../../ui/customer/friend_gift/FriendGiftViewModel.dart' as _i29;
import '../../ui/customer/home/contact_list/ContactListInteractor.dart' as _i22;
import '../../ui/customer/home/contact_list/ContactListViewModel.dart' as _i23;
import '../../ui/customer/home/HomeInteractor.dart' as _i30;
import '../../ui/customer/home/HomeViewModel.dart' as _i31;
import '../../ui/customer/home/product_detail/ProductDetailInteractor.dart'
    as _i13;
import '../../ui/customer/home/product_detail/ProductDetailViewModel.dart'
    as _i14;
import '../../ui/customer/main/CustomerMainInteractor.dart' as _i24;
import '../../ui/customer/main/CustomerMainViewModel.dart' as _i25;
import '../../ui/customer/my_gift/MyGiftInteractor.dart' as _i9;
import '../../ui/customer/my_gift/MyGiftViewModel.dart' as _i10;
import '../../ui/customer/notification/CustomerNotiInteractor.dart' as _i26;
import '../../ui/customer/notification/CustomerNotiViewModel.dart' as _i27;
import '../../ui/merchant/store/StoreInteractor.dart' as _i20;
import '../../ui/merchant/store/StoreViewModel.dart' as _i21;
import '../../ui/user_management/login/LoginInteractor.dart' as _i7;
import '../../ui/user_management/login/LoginViewModel.dart' as _i34;
import '../../ui/user_management/otp_screen/OTPInteractor.dart' as _i12;
import '../../ui/user_management/otp_screen/OTPViewModel.dart' as _i35;
import '../../ui/user_management/profile/ProfileInteractor.dart' as _i36;
import '../../ui/user_management/profile/ProfileViewModel.dart' as _i37;
import '../../ui/user_management/signup/SignupInteractor.dart' as _i18;
import '../../ui/user_management/signup/SignupViewModel.dart' as _i19;
import '../../ui/welcome/WelcomeViewModel.dart' as _i38;
import '../data/ApiHelper.dart' as _i3;
import '../data/network/repository/AuthRepo.dart' as _i4;
import '../data/network/repository/customer/GiftRepo.dart' as _i6;
import '../data/network/repository/customer/ProductRepo.dart' as _i15;
import '../data/network/repository/merchant/MerchantProductRepo.dart' as _i8;
import '../data/network/repository/notification/NotiRepo.dart' as _i11;
import '../data/network/repository/ProfileRepo.dart' as _i16;
import '../data/session/ISessionHelper.dart' as _i32;
import '../data/session/SessionHelper.dart' as _i33;
import 'AppModule.dart' as _i39; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.ApiHelper>(() => _i3.ApiHelper());
  gh.factory<_i4.AuthRepo>(() => _i4.AuthRepoImp(get<_i3.ApiHelper>()));
  gh.lazySingleton<_i5.Dio>(() => appModule.dio);
  gh.factory<_i6.GiftRepo>(() => _i6.GiftRepoImp(get<_i3.ApiHelper>()));
  gh.factory<_i7.LoginInteractor>(
      () => _i7.LoginInteractor(get<_i4.AuthRepo>()));
  gh.factory<_i8.MerchantProductRepo>(
      () => _i8.MerchantProductRepoImp(get<_i3.ApiHelper>()));
  gh.factory<_i9.MyGiftInteractor>(
      () => _i9.MyGiftInteractor(get<_i6.GiftRepo>()));
  gh.factory<_i10.MyGiftViewModel>(
      () => _i10.MyGiftViewModel(get<_i9.MyGiftInteractor>()));
  gh.factory<_i11.NotiRepo>(() => _i11.NotiRepoImp(get<_i3.ApiHelper>()));
  gh.factory<_i12.OTPInteractor>(() => _i12.OTPInteractor(get<_i4.AuthRepo>()));
  gh.factory<_i13.ProductDetailInteractor>(
      () => _i13.ProductDetailInteractor());
  gh.factory<_i14.ProductDetailViewModel>(() => _i14.ProductDetailViewModel());
  gh.factory<_i15.ProductRepo>(() => _i15.ProductRepoImp(get<_i3.ApiHelper>()));
  gh.factory<_i16.ProfileRepo>(() => _i16.ProfileRepoImp(get<_i3.ApiHelper>()));
  await gh.factoryAsync<_i17.SharedPreferences>(
    () => appModule.storage,
    preResolve: true,
  );
  gh.factory<_i18.SignupInteractor>(
      () => _i18.SignupInteractor(get<_i4.AuthRepo>()));
  gh.factory<_i19.SignupViewModel>(
      () => _i19.SignupViewModel(get<_i18.SignupInteractor>()));
  gh.factory<_i20.StoreInteractor>(
      () => _i20.StoreInteractor(get<_i8.MerchantProductRepo>()));
  gh.factory<_i21.StoreViewModel>(
      () => _i21.StoreViewModel(get<_i20.StoreInteractor>()));
  gh.factory<_i22.ContactListInteractor>(
      () => _i22.ContactListInteractor(get<_i6.GiftRepo>()));
  gh.factory<_i23.ContactListViewModel>(
      () => _i23.ContactListViewModel(get<_i22.ContactListInteractor>()));
  gh.factory<_i24.CustomerMainInteractor>(() => _i24.CustomerMainInteractor(
        get<_i11.NotiRepo>(),
        get<_i4.AuthRepo>(),
      ));
  gh.factory<_i25.CustomerMainViewModel>(
      () => _i25.CustomerMainViewModel(get<_i24.CustomerMainInteractor>()));
  gh.factory<_i26.CustomerNotiInteractor>(
      () => _i26.CustomerNotiInteractor(get<_i11.NotiRepo>()));
  gh.factory<_i27.CustomerNotiViewModel>(
      () => _i27.CustomerNotiViewModel(get<_i26.CustomerNotiInteractor>()));
  gh.factory<_i28.FriendGiftInteractor>(
      () => _i28.FriendGiftInteractor(get<_i6.GiftRepo>()));
  gh.factory<_i29.FriendGiftViewModel>(
      () => _i29.FriendGiftViewModel(get<_i28.FriendGiftInteractor>()));
  gh.factory<_i30.HomeScreenInteractor>(
      () => _i30.HomeScreenInteractor(get<_i15.ProductRepo>()));
  gh.factory<_i31.HomeViewModel>(
      () => _i31.HomeViewModel(get<_i30.HomeScreenInteractor>()));
  gh.factory<_i32.ISessionHelper>(
      () => _i33.SessionHelper(get<_i17.SharedPreferences>()));
  gh.factory<_i34.LoginViewModel>(() => _i34.LoginViewModel(
        get<_i7.LoginInteractor>(),
        get<_i32.ISessionHelper>(),
      ));
  gh.factory<_i35.OTPViewModel>(() => _i35.OTPViewModel(
        get<_i12.OTPInteractor>(),
        get<_i32.ISessionHelper>(),
      ));
  gh.factory<_i36.ProfileInteractor>(
      () => _i36.ProfileInteractor(get<_i16.ProfileRepo>()));
  gh.factory<_i37.ProfileViewModel>(() => _i37.ProfileViewModel(
        get<_i36.ProfileInteractor>(),
        get<_i32.ISessionHelper>(),
      ));
  gh.factory<_i38.WelcomeViewModel>(
      () => _i38.WelcomeViewModel(get<_i32.ISessionHelper>()));
  return get;
}

class _$AppModule extends _i39.AppModule {}
