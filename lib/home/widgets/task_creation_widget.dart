import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:todolist/colors.dart';
import 'package:todolist/home/input_modal.dart';
import 'package:todolist/styles.dart';

class TaskCreationWidget extends StatelessWidget {
  const TaskCreationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final date = DateFormat('EEE dd MMM yyyy').format(DateTime.now());
    return Container(
      height: 156.h,
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
            child: const ColoredBox(
              color: AppColors.primary,
            ),
          ),
          18.verticalSpace,
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                InkWell(
                  onTap: () async {
                    await InputModal.show(context);
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: const EdgeInsets.all(1.0),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                      12.horizontalSpace,
                      Text(
                        'Tap plus to create a new task',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add your task',
                      style: AppStyles.syle412.copyWith(color: AppColors.grey767),
                    ),
                    Text(
                      'Today $date',
                      style: AppStyles.syle412.copyWith(color: AppColors.grey767),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
