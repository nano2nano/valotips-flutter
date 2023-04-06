import 'package:valotips/model/agent/agent.dart';
import 'package:valotips/model/stage/stage.dart';

abstract class ValorantApiRepository {
  Future<List<Agent>> fetchAgents({
    String? language,
    bool? isPlayableCharacter,
  });
  Future<List<Stage>> fetchStages({
    String? language,
  });
}
