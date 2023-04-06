// agents provider

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valotips/model/agent/agent.dart';
import 'package:valotips/repository/valorant_api/valorant_api_repository_impl.dart';

final agentsProvider = FutureProvider<List<Agent>>((ref) async {
  final repository = ref.watch(valorantApiRepository);
  return repository.fetchAgents(language: 'ja-JP', isPlayableCharacter: true);
});
