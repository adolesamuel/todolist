// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:todolist/colors.dart';
import 'package:todolist/configs/assets.gen.dart';
import 'package:todolist/styles.dart';

class TaskDetailWidget extends StatelessWidget {
  final Color? cardColor;
  final String? title;
  final int? taskNumber;
  const TaskDetailWidget({
    super.key,
    this.cardColor,
    this.title,
    this.taskNumber,
  });

  @override
  Widget build(BuildContext context) {
    final date = DateFormat('EEE dd MMM yyyy').format(DateTime.now());
    final color = cardColor ?? AppColors.primary;
    return Container(
      height: 148.h,
      width: 327.w,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: AppColors.blackOF1,
            blurRadius: 40,
            spreadRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 36.h,
            width: double.infinity,
            child: ColoredBox(
              color: color,
              child: Row(
                children: [
                  18.horizontalSpace,
                  Assets.flagOutline.svg(),
                  8.horizontalSpace,
                  Text(
                    'Priority Task ${taskNumber ?? 1}',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ),
          18.verticalSpace,
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                InkWell(
                  onTap: () async {},
                  child: Row(
                    children: [
                      Assets.dot.svg(color: color),
                      12.horizontalSpace,
                      Text(
                        title ?? 'Masyla Website Project',
                        style: AppStyles.style516.copyWith(
                          color: AppColors.black333,
                        ),
                      ),
                    ],
                  ),
                ),
                24.verticalSpace,
                const Divider(),
                8.verticalSpace,
                Row(
                  children: [
                    Assets.alarm.svg(),
                    Text(
                      '08:30 PM',
                      style: AppStyles.syle412.copyWith(
                        color: const Color(0xFFFF486A),
                      ),
                    ),
                    8.horizontalSpace,
                    Assets.chat.svg(),
                    Text(
                      '1',
                      style: AppStyles.syle412.copyWith(color: AppColors.grey767),
                    ),
                    8.horizontalSpace,
                    Assets.directInboxOutline.svg(),
                    Text(
                      '2',
                      style: AppStyles.syle412.copyWith(color: AppColors.grey767),
                    ),
                    const Spacer(),
                    Text(
                      date,
                      style: AppStyles.syle412.copyWith(color: AppColors.grey767),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
