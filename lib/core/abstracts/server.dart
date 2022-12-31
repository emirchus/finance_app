import 'package:finance_app/core/abstracts/consumer.dart';

abstract class Server extends Consumer {
  const Server();

  Future<Map<String, dynamic>> get(
    String path, [
    Map<String, dynamic>? query,
  ]);

  Future<Map<String, dynamic>> post(
    String path, [
    Map<String, dynamic>? body,
  ]);

  Future<Map<String, dynamic>> put(
    String path, [
    Map<String, dynamic>? body,
  ]);

  Future<Map<String, dynamic>> delete(
    String path, [
    Map<String, dynamic>? body,
  ]);
}
