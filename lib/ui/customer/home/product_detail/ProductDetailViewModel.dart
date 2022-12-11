import 'package:giftr/base/BaseViewModel.dart';
import 'package:giftr/core/data/network/module/customer/product/GetProductRes.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductDetailViewModel extends BaseViewModel {

  late Product product;

  @override
  void init() {}
}