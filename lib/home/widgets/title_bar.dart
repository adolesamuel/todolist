import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist/colors.dart';
import 'package:todolist/configs/assets.gen.dart';
import 'package:todolist/styles.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: AppStyles.syle624,
            ),
            8.verticalSpace,
            Text(
              'Best platform for creating to-do lists',
              style: AppStyles.syle414.copyWith(
                color: AppColors.grey767,
              ),
            ),
          ],
        ),
        IconButton(
          icon: Assets.setting.svg(),
          onPressed: () {},
        ),
      ],
    );
  }
}
