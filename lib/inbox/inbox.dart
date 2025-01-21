import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist/colors.dart';
import 'package:todolist/configs/assets.gen.dart';
import 'package:todolist/home/input_modal.dart';
import 'package:todolist/inbox/widget/task_detail_widget.dart';

class InboxWidget extends StatelessWidget {
  const InboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF1D3066),
        elevation: 0,
        title: const Text('Inbox'),
        centerTitle: true,
        leading: const BackButton(),
        actions: [IconButton(onPressed: () {}, icon: Assets.searchNormal.svg())],
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.verticalSpace,
            const TaskDetailWidget(),
            20.verticalSpace,
            const TaskDetailWidget(
              title: 'Medical Design System',
              taskNumber: 3,
              cardColor: Color(0xFFEA4335),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await InputModal.show(context);
        },
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
