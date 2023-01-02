import 'package:finance_app/core/abstracts/server.dart';
import 'package:firebase_database/firebase_database.dart';

FirebaseDatabase database = FirebaseDatabase.instance;

class FirebaseConsumer extends Server {
  const FirebaseConsumer();

  @override
  Future<void> init() async {}

  @override
  Future<void> dispose() async {}

  @override
  Future<Map<String, dynamic>> delete(String path) async {
    final ref = database.ref(path);

    try {
      await ref.remove();
      return {'status': 'success'};
    } catch (e) {
      return {'status': 'error', 'message': e.toString()};
    }
  }

  @override
  Future<Map<String, dynamic>> get(String path, [Map<String, dynamic>? query]) async {
    try {
      final ref = database.ref(path);
      final snapshot = await ref.get();
      return {'status': 'success', 'data': snapshot.value};
    } catch (e) {
      return {'status': 'error', 'message': e.toString()};
    }
  }

  @override
  Future<Map<String, dynamic>> post(String path, [Map<String, dynamic>? body]) async {
    try {
      final ref = database.ref(path);
      await ref.set(body);
      return {'status': 'success'};
    } catch (e) {
      return {'status': 'error', 'message': e.toString()};
    }
  }

  @override
  Future<Map<String, dynamic>> put(String path, [Map<String, dynamic>? body]) async {
    try {
      final ref = database.ref(path);
      if (body == null) throw Exception('Body cannot be null');
      await ref.update(body);
      return {'status': 'success'};
    } catch (e) {
      return {'status': 'error', 'message': e.toString()};
    }
  }
}
