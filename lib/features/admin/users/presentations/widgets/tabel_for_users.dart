import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/users/presentations/widgets/table_cell_title_widget.dart';

class TabelForUsers extends StatelessWidget {
  const TabelForUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: ColorsDark.blueLight),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {
        0: FixedColumnWidth(100.w),
        1: const FlexColumnWidth(),
        2: FixedColumnWidth(110.w),
      },
      children: [
        const TableRow(
          decoration: BoxDecoration(
            color: ColorsDark.blueDark,
          ),
          children: [
            // Name
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: TableCellTitleWidget(
                title: 'Name',
                icon: Icons.person,
              ),
            ),
            // Email
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child:TableCellTitleWidget(
                title: 'Email',
                icon: Icons.email_outlined,
              ),
            ),
            // Delete
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child:TableCellTitleWidget(
                title: 'Delete',
                icon: Icons.delete_forever,
              ),
            ),
          ],
        ),
        ...List.generate(
          4,
          (index) => TableRow(
            children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextApp(
                      text: 'Abdo',
                      style: context.textStyle.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeightHelper.medium)),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextApp(
                      text: 'abdo.admin@gmail.com ',
                      style: context.textStyle.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeightHelper.medium)),
                ),
              ),
              const TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
