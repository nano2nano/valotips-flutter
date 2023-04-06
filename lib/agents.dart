// dropdown menu for selecting the agent

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valotips/abilities.dart';
import 'package:valotips/provider/agents.dart';

import 'model/agent/agent.dart';

final selectedAgentProvider = StateProvider<Agent?>((ref) => null);

class AgentDropdown extends ConsumerWidget {
  const AgentDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agents = ref.watch(agentsProvider);

    return agents.when(
      data: (agents) {
        return DropdownButton<Agent>(
          value: ref.watch(selectedAgentProvider),
          items: agents
              .map(
                (agent) => DropdownMenuItem<Agent>(
                  value: agent,
                  child: Text(agent.displayName),
                ),
              )
              .toList(),
          onChanged: (agent) {
            ref.read(selectedAgentProvider.notifier).state = agent;
            ref.read(selectedAbilityProvider.notifier).state = null;
          },
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text(error.toString()),
    );
  }
}
