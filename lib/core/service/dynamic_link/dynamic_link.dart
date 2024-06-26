// ignore_for_file: deprecated_member_use

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/routes/routes.dart';

class DynamicLink {
  const DynamicLink._();
  static const DynamicLink _instance = DynamicLink._();
  factory DynamicLink() => _instance;

  Future<String> generateProductLink(
      {required int productId,
      required String title,
      required String imageUrl}) async {
    final dynamicLinkParams = DynamicLinkParameters(
      uriPrefix: 'https://lukymarket.page.link',
      socialMetaTagParameters: SocialMetaTagParameters(
        title: title,
        description: 'Big sale on Luky Market 50%',
        imageUrl: Uri.parse(imageUrl),
      ),
      link: Uri.parse('https://www.udemy.com/$productId '),
      androidParameters: const AndroidParameters(
        packageName: 'com.example.store_app',
        minimumVersion: 1,
      ),
      // iosParameters: const IOSParameters(
      //   bundleId: 'com.example.store_app',
      //   minimumVersion: '1.0.1',
      //   appStoreId: '123456789',
      // ),
    );

    final dynamicLink =
        await FirebaseDynamicLinks.instance.buildShortLink(dynamicLinkParams);

    debugPrint('===[DynamicLink :${dynamicLink.shortUrl}]===');
    return dynamicLink.shortUrl.toString();
  }

  Future<void> initDynamicLink() async {
    final initialLink = await FirebaseDynamicLinks.instance.getInitialLink();
    if (initialLink != null) {
      // Navigate background
      Future.delayed(const Duration(milliseconds: 500), () {
        _handleDeepLinkNavigator(initialLink.link.path);
      });
    }
    // forground
    FirebaseDynamicLinks.instance.onLink.listen(
      (dynamicLinkData) {
        final path = dynamicLinkData.link.path;
        debugPrint('===[DynamicLinkPath :$path]===');
        Future.delayed(const Duration(milliseconds: 500), () {
          _handleDeepLinkNavigator(path);
        }); // Navigate
      },
    ).onError((error, stackTrace) {
      debugPrint('===[DynamicLinkError :$error]===');
    });
  }

  void _handleDeepLinkNavigator(String path) {
    final splitLink = path.split('/');
    getIt<GlobalKey<NavigatorState>>()
        .currentState
        ?.context
        .pushNamed(Routes.productDetail, argumnets: splitLink[1]);
  }
}
