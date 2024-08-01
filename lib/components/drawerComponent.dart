import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/allGlobalKeys.dart';
import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/pages/PolicyPage.dart';
import 'package:recipe.app/pages/TermsAndConditionPage.dart';
import 'package:recipe.app/pages/categoryDetailPage.dart';
import 'package:recipe.app/themes.dart';

import '../controllers/collectionsController.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  State<DrawerComponent> createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  final UserController userController = Get.find<UserController>();
  final LoginPageController loginPageController =
      Get.find<LoginPageController>();
  final CollectionsController collectionsController =
      Get.find<CollectionsController>();

  @override
  Widget build(BuildContext context) {
    var currentAuthenticatedUser =
        userController.currentAuthenticatedUser.value;
    return Drawer(
      key: AllGlobalKeys.drawerComponentKey,
      child: Container(
        height: 100,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.lightGreen,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${currentAuthenticatedUser!.firstName.capitalize} ${currentAuthenticatedUser.lastName.capitalize}',
                        style: CustomTheme.headerStyle,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Phone: ',
                        style: CustomTheme.headerStyle,
                      ),
                      Text(
                        '${currentAuthenticatedUser.phoneNumber}',
                        style: CustomTheme.paragraphStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            Obx(
              () => collectionsController.collectionItems.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                        color: CustomTheme.progressIndicatorColor,
                      ),
                    )
                  : Card(
                      child: Column(
                        children: [
                          Text(
                            'Categories',
                            style: CustomTheme.headerStyle,
                          ),
                          SizedBox(
                            height: 400,
                            child: ListView(
                              children: collectionsController.collectionItems
                                  .map((element) => ListTile(
                                        title: Text(
                                          element.name,
                                          style: CustomTheme.headerStyle,
                                        ),
                                        onTap: () {
                                          Get.to(() => CategoryDetailPage(),
                                              arguments: {'id': element.id});
                                        },
                                      ))
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
            ),
            ListTile(
              leading: Icon(Icons.policy),
              title: Text(
                'Return & Policy\'s',
                style: CustomTheme.headerStyle,
              ),
              onTap: () {
                Get.to(() => PolicyPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.policy),
              title: Text(
                'Terms & Conditions',
                style: CustomTheme.headerStyle,
              ),
              onTap: () {
                Get.to(() => TermsAndConditionPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Sign out',
                style: CustomTheme.headerStyle,
              ),
              onTap: () {
                // await FirebaseAuth.instance.signOut();
                AllGlobalKeys.drawerComponentKey.currentState?.closeDrawer();

                loginPageController.onUserLogout(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
