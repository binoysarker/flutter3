import 'package:recipe.app/graphqlSection/collections.graphql.dart';
import 'package:recipe.app/graphqlSection/products.graphql.dart';

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
  productChildrenVariantItems,
  productVariantItems,
  normalProductList,
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

typedef SingleProductChildrenVariantItemType = Query$GetCollectionsByIdOrSlug$collection$children$productVariants$items;

typedef SingleProductVariantItemType = Query$GetCollectionsByIdOrSlug$collection$productVariants$items;

typedef SingleProductListItemType = Query$GetAllProducts$products$items;

enum OrderStateEnums {
  AddingItems,
  ExpressDeliverySelectedNotificationProcess,
  ArrangingPayment,
  DeliveryNotificationProcess,
  PaymentSettled,
  Cancelled,
  Delivered,
  Shipped
}
enum LocalStorageStrings{
  user_data,
  auth_token,
  isLoggedOut,
  email,
  password,
  phone,
  remember_me_status
}
enum SmsDeliveryType{
  morning_evening,
  payment_failed
}
enum PaymentOptionType{
  online,
  offline
}
enum CityToUseType{
  Madurai
}


var emptyShippingMethod =  {
  'id': '',
  'name': '',
  'code': '',
  'description': '',
  'price': 0,
  'priceWithTax': 0,
  'metadata': '',
  '__typename': '',
};