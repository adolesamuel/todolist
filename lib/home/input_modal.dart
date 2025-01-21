import 'package:flutter/material.dart';
import 'package:todolist/configs/assets.gen.dart';

class InputModal extends StatefulWidget {
  const InputModal({super.key});

  static Future<String?> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => const InputModal(),
    );
  }

  @override
  State<InputModal> createState() => _InputModalState();
}

class _InputModalState extends State<InputModal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          canRequestFocus: true,
          decoration: InputDecoration(
            hintText: 'eg. Meeting with Client',
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Description',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Assets.directInbox.svg(),
                  Assets.calendar.svg(),
                  Assets.clock.svg(),
                  Assets.flag.svg(),
                ]
                    .map((e) => IconButton(
                          onPressed: () {},
                          icon: e,
                          iconSize: 20,
                        ))
                    .toList(),
              ),
              IconButton(
                onPressed: () {},
                icon: Assets.send.svg(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
