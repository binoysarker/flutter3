import 'package:ecommerce_app/graphqlSection/collections.graphql.dart';

enum PageRouteNames {
  home,
  store,
  order,
  reward,
  my_account,
  forget_password,
  reset_password,
  product_detail,
  category_detail,
  sub_category_detail,
  login,
  verify_token
}
enum SignInProcessNames {
  firebase,
  normal
}
enum ControllerTypeNames {
  user,
  product,
  loginPage,
  collection,
  singleCollectionDetail,
  productVariantItems
}

enum CurrencyCodeEnum{
  USD,
  INR,
  BDT
}
class CommonVariableData{
  static String placeholder = 'assets/images/placeholder.jpg';

}
typedef TypeOfList = List<Query$GetCollectionsByIdOrSlug$collection$children$productVariants$items>;