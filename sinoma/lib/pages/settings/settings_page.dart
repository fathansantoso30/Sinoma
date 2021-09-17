import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinoma/constants/asset_path.dart';
import 'package:sinoma/constants/controllers.dart';
import 'package:sinoma/constants/sizeConfig.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:sinoma/pages/settings/widgets/tentang_kami.dart';
import 'package:sinoma/pages/settings/widgets/tentang_sinoma.dart';
import 'package:sinoma/widgets/policy_dialog.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  SettingsGroup(
                    items: [
                      SettingsItem(
                        onTap: () {
                          Get.to(() => TentangSinoma());
                        },
                        icons: Icons.info_rounded,
                        iconStyle: IconStyle(),
                        title: 'Tentang Sinoma',
                        subtitle: "Informasi tentang sinoma",
                      ),
                      SettingsItem(
                        onTap: () {
                          Get.to(() => TentangKami());
                        },
                        icons: CupertinoIcons.person,
                        iconStyle: IconStyle(backgroundColor: Colors.amber),
                        title: 'Tentang Kami',
                        subtitle: "Informasi tentang developer",
                      ),
                    ],
                  ),
                  SettingsGroup(
                    items: [
                      SettingsItem(
                        onTap: () {
                          showModal(
                            context: context,
                            configuration: FadeScaleTransitionConfiguration(),
                            builder: (context) {
                              return PolicyDialog(
                                mdFilePath: terms,
                              );
                            },
                          );
                        },
                        icons: Icons.privacy_tip_rounded,
                        iconStyle:
                            IconStyle(backgroundColor: Colors.deepOrange),
                        title: 'Syarat dan Ketentuan',
                        subtitle: "Pelajari aturan Sinoma",
                      ),
                      SettingsItem(
                        onTap: () {
                          showModal(
                            context: context,
                            configuration: FadeScaleTransitionConfiguration(),
                            builder: (context) {
                              return PolicyDialog(
                                mdFilePath: privacy,
                              );
                            },
                          );
                        },
                        icons: Icons.policy_rounded,
                        iconStyle:
                            IconStyle(backgroundColor: Colors.deepPurple),
                        title: 'Kebijakan Privasi',
                        subtitle: "Pelajari aturan privasi Sinoma",
                      ),
                    ],
                  ),
                  // You can add a settings title
                  Divider(),
                  SettingsGroup(
                    items: [
                      SettingsItem(
                        onTap: () {
                          authController.signOut();
                        },
                        icons: Icons.exit_to_app_rounded,
                        title: "Keluar",
                      ),
                      SettingsItem(
                        onTap: () {
                          authController.deleteAccount();
                        },
                        icons: CupertinoIcons.delete_solid,
                        title: "Hapus Akun",
                        titleStyle: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
