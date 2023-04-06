import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:valotips/model/agent/agent.dart';
import 'package:valotips/model/stage/stage.dart';
import 'package:valotips/repository/valorant_api/valorant_api_repository.dart';

final valorantApiRepository =
    Provider<ValorantApiRepository>((ref) => ValorantApiRepositoryImpl());

class ValorantApiRepositoryImpl implements ValorantApiRepository {
  ValorantApiRepositoryImpl();
  final String authority = 'valorant-api.com';
  final String apiVersion = 'v1';
  @override
  Future<List<Agent>> fetchAgents({
    String? language,
    bool? isPlayableCharacter,
  }) async {
    // add query parameters if they are not null
    final queryParameters = {
      if (language != null) 'language': language,
      if (isPlayableCharacter != null)
        'isPlayableCharacter': isPlayableCharacter.toString(),
    };

    final url = Uri.https(authority, '$apiVersion/agents', queryParameters);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return (json['data'] as List)
          .map((agent) => Agent.fromJson(agent))
          .toList();
    } else {
      throw Exception('Failed to load Valorant API');
    }
  }

  @override
  Future<List<Stage>> fetchStages({String? language}) {
    final queryParameters = {
      if (language != null) 'language': language,
    };

    final url = Uri.https(authority, '$apiVersion/maps', queryParameters);
    return http.get(url).then((response) {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        return (json['data'] as List)
            .map((stage) => Stage.fromJson(stage))
            .toList();
      } else {
        throw Exception('Failed to load Valorant API');
      }
    });
  }
}
