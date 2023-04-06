import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valotips/abilities.dart';
import 'package:valotips/agents.dart';
import 'package:valotips/firebase_options.dart';
import 'package:valotips/stages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseAuth auth = FirebaseAuth.instance;
  UserCredential userCredential = await auth.signInAnonymously();
  print('User ID: ${userCredential.user?.uid}');

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedAgent = ref.watch(selectedAgentProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: AgentDropdown(),
          ),
          selectedAgent == null
              ? const Text('Select an agent')
              : Center(
                  child: AbilityDropdown(agent: selectedAgent),
                ),
          const Center(
            child: StageDropdown(),
          ),
        ],
      ),
    );
  }
}
