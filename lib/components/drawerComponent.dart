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
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  child: Image(
                    image: AssetImage('assets/images/avater.jpg'),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  '${currentAuthenticatedUser!.emailAddress}',
                  style: CustomTheme.headerStyle,
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
