import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/graphqlSection/collections.graphql.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';

import '../graphqlSection/vendureSchema.graphql.dart';

class CollectionsController extends GetxController {
  var graphqlService = GraphqlService();
  final UserController userController = Get.find<UserController>();
  final UtilityController utilityController = Get.find<UtilityController>();
  var collectionItems = <Query$GetAllCollections$collections$items>[].obs;
  var isLoading = false.obs;
  var currentTakeItemsCount = 100.obs;
  var currentSkipCount = 0.obs;
  var channelList = <Query$GetChannelList$getChannelList>[].obs;
  var channelDropdownListOptions = <String>[].obs;
  var selectedChannel = ''.obs;
  var collectionItemSelected = {}.obs;
  var singleCollectionDetail =
      (null as Query$GetCollectionsByIdOrSlug$collection?).obs;

  void getAllCollections(int skip) async {
    try {
      isLoading.value = true;
      graphqlService = GraphqlService();
      final res = await graphqlService.client.value.query$GetAllCollections(
          Options$Query$GetAllCollections(
              variables: Variables$Query$GetAllCollections(
                  input: Input$CollectionListOptions(take: 100, skip: skip))));
      if (res.hasException) {
        debugPrint('${res.exception.toString()}');
        isLoading.value = false;
      }
      if (res.data != null) {
        debugPrint('collection data ${res.parsedData!.collections.toJson()}');
        collectionItems.value = res.parsedData!.collections.items.toList();
        isLoading.value = false;
      }
    } catch (e) {
      debugPrint('$e');
      isLoading.value = false;
    }
  }

  void getChannelList() async {
    try {
      isLoading.value = true;
      graphqlService = GraphqlService();
      final res = await graphqlService.client.value.query$GetChannelList();
      if (res.hasException) {
        debugPrint('${res.exception.toString()}');
        isLoading.value = false;
      }
      if (res.data != null) {
        debugPrint('channel list ${res.parsedData!.getChannelList.toList()}');
        channelList.value = res.parsedData!.getChannelList;
        channelDropdownListOptions.value = res.parsedData!.getChannelList
            .where((element) => element.code != '__default_channel__')
            .map((e) => e.code)
            .toList();
        isLoading.value = false;
      }
    } catch (e) {
      debugPrint('$e');
    }
  }

  void onCitySelected(String city) {
    selectedChannel.value = city;
    var token = channelList.where((e) => e.code == city).first.token;
    LocalStorage localStorage =
        new LocalStorage(LocalStorageStrings.selected_channel_token.name);
    localStorage.ready.then((value) => {
          localStorage.setItem(
              LocalStorageStrings.selected_channel_token.name, token.toString())
        });
    GraphqlService.setChannelToken(token);
  }

  void showMoreProductsUnderCollection(String id) {
    getSingleCollectionDetail(id);
  }

  void getSingleCollectionDetail(String id) async {
    try {
      isLoading.value = true;
      graphqlService = GraphqlService();
      final res = await graphqlService.client.value
          .query$GetCollectionsByIdOrSlug(
              Options$Query$GetCollectionsByIdOrSlug(
                  variables: Variables$Query$GetCollectionsByIdOrSlug(
                      id: id,
                      take: currentTakeItemsCount.value,
                      skip: currentSkipCount.value)));
      if (res.hasException) {
        debugPrint('${res.exception.toString()}');
        isLoading.value = false;
      }
      if (res.data != null) {
        debugPrint(
            'single collection data ${res.parsedData!.collection!.toJson()}');
        singleCollectionDetail.value = res.parsedData!.collection!;

        isLoading.value = false;
      }
    } catch (e) {
      debugPrint('$e');
    }
  }
}
