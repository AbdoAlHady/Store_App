import 'package:flutter/material.dart';
import 'package:store_app/features/admin/add_notification/presentations/widgets/edit/edit_notification_bottom_sheet.dart';

import '../../../../../../core/common/bootm_sheet/custom_btuttom_sheet.dart';

class EditNotificationBtn extends StatelessWidget {
  const EditNotificationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CustomBottomSheet.showCustomModelSheet(
            context: context, child: const EditNotificationButtomSheet());
      },
      child: const Icon(Icons.edit, color: Colors.yellow),
    );
  }
}
