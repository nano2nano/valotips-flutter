// dropdown menu for selecting the agent

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valotips/model/ability/ability.dart';

import 'model/agent/agent.dart';

final selectedAbilityProvider =
    StateProvider.autoDispose<Ability?>((ref) => null);

class AbilityDropdown extends ConsumerWidget {
  const AbilityDropdown({
    super.key,
    required this.agent,
  });
  final Agent agent;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton<Ability>(
      value: ref.watch(selectedAbilityProvider),
      items: agent.abilities
          .map((ability) => DropdownMenuItem<Ability>(
                value: ability,
                child: Text(ability.displayName),
              ))
          .toList(),
      onChanged: (ability) {
        ref.read(selectedAbilityProvider.notifier).state = ability;
      },
    );
  }
}
