import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/service/push_notification/firebase_cloud_messaging.dart';

class HomeCustomer extends StatelessWidget {
  const HomeCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: context.color.mainColor,
          title: const Text('Customer Home'),
        ),
        body: Center(
          child: ValueListenableBuilder(
            valueListenable: FireBaseCloudMessaging().isNotivicationSubscribe,
            builder: (context, value, child) {
              return  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    value ? 'Subscribe' : 'UnSubscribe',
                    style: TextStyle( 
                      fontSize: 24.sp,
                      color: Colors.white,
                    ),
                  ),
                  horizontalSpace(20),
                  Transform.scale(
                    scale: 1.5,
                    child: Switch(
                      value: value,
                      onChanged: (value) async {
                        await FireBaseCloudMessaging().controllerForUserSubscribe();
                      },
                      inactiveTrackColor: const Color(0xFF262626),
                      activeColor: Colors.green,
                    ),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
