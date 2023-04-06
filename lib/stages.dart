// dropdown menu for selecting the agent

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valotips/model/stage/stage.dart';
import 'package:valotips/provider/stages.dart';

final selectedStageProvider = StateProvider<Stage?>((ref) => null);

class StageDropdown extends ConsumerWidget {
  const StageDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stages = ref.watch(stagesProvider);
    final selectedStage = ref.watch(selectedStageProvider);

    return stages.when(
      data: (stages) {
        return DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            hint: selectedStage == null
                ? const UnselectedDropdown(text: 'Select a stage')
                : StackedStageIcon(stage: selectedStage),
            items: stages
                .map((stage) => DropdownMenuItem(
                      value: stage,
                      child: StackedStageIcon(stage: stage),
                    ))
                .toList(),
            onChanged: (Stage? stage) {
              ref.read(selectedStageProvider.notifier).state = stage;
            },
          ),
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text(error.toString()),
    );
  }
}

class UnselectedDropdown extends StatelessWidget {
  const UnselectedDropdown({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.arrow_drop_down),
        Text(text),
      ],
    );
  }
}

class StackedStageIcon extends StatelessWidget {
  const StackedStageIcon({
    super.key,
    required this.stage,
  });

  final Stage stage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: NetworkImage(stage.listViewIcon)),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.5),
          ),
          child: Text(stage.displayName),
        )
      ],
    );
  }
}
