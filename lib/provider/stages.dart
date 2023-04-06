// agents provider

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valotips/model/stage/stage.dart';
import 'package:valotips/repository/valorant_api/valorant_api_repository_impl.dart';

final stagesProvider = FutureProvider<List<Stage>>((ref) async {
  final repository = ref.watch(valorantApiRepository);
  return repository.fetchStages(language: 'ja-JP');
});
