import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/themes.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  State<DrawerComponent> createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  final UserController userController = Get.find<UserController>();
  final LoginPageController loginPageController =
      Get.find<LoginPageController>();

  @override
  Widget build(BuildContext context) {
    var currentAuthenticatedUser =
        userController.currentAuthenticatedUser.value;
    return Drawer(
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
                    Text('Phone: ',style: CustomTheme.headerStyle,),
                    Text('${currentAuthenticatedUser.phoneNumber}',style: CustomTheme.paragraphStyle,)
                  ],
                )
              ],
            ),
            
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sign out', style: CustomTheme.headerStyle,),
            onTap: () {
              // await FirebaseAuth.instance.signOut();
              loginPageController.resetFormField();
              userController.onUserLogout();
            },
          ),
        ],
      ),
    );
  }
}
