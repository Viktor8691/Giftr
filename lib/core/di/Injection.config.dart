// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../../ui/customer/friend_gift/FriendGiftInteractor.dart' as _i27;
import '../../ui/customer/friend_gift/FriendGiftViewModel.dart' as _i28;
import '../../ui/customer/home/contact_list/ContactListInteractor.dart' as _i23;
import '../../ui/customer/home/contact_list/ContactListViewModel.dart' as _i24;
import '../../ui/customer/home/HomeInteractor.dart' as _i29;
import '../../ui/customer/home/HomeViewModel.dart' as _i30;
import '../../ui/customer/home/product_detail/ProductDetailInteractor.dart'
    as _i15;
import '../../ui/customer/home/product_detail/ProductDetailViewModel.dart'
    as _i16;
import '../../ui/customer/main/CustomerMainInteractor.dart' as _i25;
import '../../ui/customer/main/CustomerMainViewModel.dart' as _i26;
import '../../ui/customer/my_gift/MyGiftInteractor.dart' as _i11;
import '../../ui/customer/my_gift/MyGiftViewModel.dart' as _i12;
import '../../ui/customer/notification/CustomerNotiInteractor.dart' as _i5;
import '../../ui/customer/notification/CustomerNotiViewModel.dart' as _i6;
import '../../ui/merchant/store/StoreInteractor.dart' as _i21;
import '../../ui/merchant/store/StoreViewModel.dart' as _i22;
import '../../ui/user_management/login/LoginInteractor.dart' as _i9;
import '../../ui/user_management/login/LoginViewModel.dart' as _i33;
import '../../ui/user_management/otp_screen/OTPInteractor.dart' as _i14;
import '../../ui/user_management/otp_screen/OTPViewModel.dart' as _i34;
import '../../ui/user_management/signup/SignupInteractor.dart' as _i19;
import '../../ui/user_management/signup/SignupViewModel.dart' as _i20;
import '../../ui/welcome/WelcomeViewModel.dart' as _i35;
import '../data/ApiHelper.dart' as _i3;
import '../data/network/repository/AuthRepo.dart' as _i4;
import '../data/network/repository/customer/GiftRepo.dart' as _i8;
import '../data/network/repository/customer/ProductRepo.dart' as _i17;
import '../data/network/repository/merchant/MerchantProductRepo.dart' as _i10;
import '../data/network/repository/notification/NotiRepo.dart' as _i13;
import '../data/session/ISessionHelper.dart' as _i31;
import '../data/session/SessionHelper.dart' as _i32;
import 'AppModule.dart' as _i36; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i5.CustomerNotiInteractor>(() => _i5.CustomerNotiInteractor());
  gh.factory<_i6.CustomerNotiViewModel>(() => _i6.CustomerNotiViewModel());
  gh.lazySingleton<_i7.Dio>(() => appModule.dio);
  gh.factory<_i8.GiftRepo>(() => _i8.GiftRepoImp(get<_i3.ApiHelper>()));
  gh.factory<_i9.LoginInteractor>(
      () => _i9.LoginInteractor(get<_i4.AuthRepo>()));
  gh.factory<_i10.MerchantProductRepo>(
      () => _i10.MerchantProductRepoImp(get<_i3.ApiHelper>()));
  gh.factory<_i11.MyGiftInteractor>(
      () => _i11.MyGiftInteractor(get<_i8.GiftRepo>()));
  gh.factory<_i12.MyGiftViewModel>(
      () => _i12.MyGiftViewModel(get<_i11.MyGiftInteractor>()));
  gh.factory<_i13.NotiRepo>(() => _i13.NotiRepoImp(get<_i3.ApiHelper>()));
  gh.factory<_i14.OTPInteractor>(() => _i14.OTPInteractor(get<_i4.AuthRepo>()));
  gh.factory<_i15.ProductDetailInteractor>(
      () => _i15.ProductDetailInteractor());
  gh.factory<_i16.ProductDetailViewModel>(() => _i16.ProductDetailViewModel());
  gh.factory<_i17.ProductRepo>(() => _i17.ProductRepoImp(get<_i3.ApiHelper>()));
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => appModule.storage,
    preResolve: true,
  );
  gh.factory<_i19.SignupInteractor>(
      () => _i19.SignupInteractor(get<_i4.AuthRepo>()));
  gh.factory<_i20.SignupViewModel>(
      () => _i20.SignupViewModel(get<_i19.SignupInteractor>()));
  gh.factory<_i21.StoreInteractor>(
      () => _i21.StoreInteractor(get<_i10.MerchantProductRepo>()));
  gh.factory<_i22.StoreViewModel>(
      () => _i22.StoreViewModel(get<_i21.StoreInteractor>()));
  gh.factory<_i23.ContactListInteractor>(
      () => _i23.ContactListInteractor(get<_i8.GiftRepo>()));
  gh.factory<_i24.ContactListViewModel>(
      () => _i24.ContactListViewModel(get<_i23.ContactListInteractor>()));
  gh.factory<_i25.CustomerMainInteractor>(
      () => _i25.CustomerMainInteractor(get<_i13.NotiRepo>()));
  gh.factory<_i26.CustomerMainViewModel>(
      () => _i26.CustomerMainViewModel(get<_i25.CustomerMainInteractor>()));
  gh.factory<_i27.FriendGiftInteractor>(
      () => _i27.FriendGiftInteractor(get<_i8.GiftRepo>()));
  gh.factory<_i28.FriendGiftViewModel>(
      () => _i28.FriendGiftViewModel(get<_i27.FriendGiftInteractor>()));
  gh.factory<_i29.HomeScreenInteractor>(
      () => _i29.HomeScreenInteractor(get<_i17.ProductRepo>()));
  gh.factory<_i30.HomeViewModel>(
      () => _i30.HomeViewModel(get<_i29.HomeScreenInteractor>()));
  gh.factory<_i31.ISessionHelper>(
      () => _i32.SessionHelper(get<_i18.SharedPreferences>()));
  gh.factory<_i33.LoginViewModel>(() => _i33.LoginViewModel(
        get<_i9.LoginInteractor>(),
        get<_i31.ISessionHelper>(),
      ));
  gh.factory<_i34.OTPViewModel>(() => _i34.OTPViewModel(
        get<_i14.OTPInteractor>(),
        get<_i31.ISessionHelper>(),
      ));
  gh.factory<_i35.WelcomeViewModel>(
      () => _i35.WelcomeViewModel(get<_i31.ISessionHelper>()));
  return get;
}

class _$AppModule extends _i36.AppModule {}
