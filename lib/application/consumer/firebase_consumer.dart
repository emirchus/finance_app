import 'package:finance_app/core/abstracts/server.dart';

class FirebaseConsumer extends Server {
  @override
  Future<void> init() async {}

  @override
  Future<void> dispose() async {}

  @override
  Future<Map<String, dynamic>> delete(String path, [Map<String, dynamic>? body]) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> get(String path, [Map<String, dynamic>? query]) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> post(String path, [Map<String, dynamic>? body]) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> put(String path, [Map<String, dynamic>? body]) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
