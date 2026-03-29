import 'package:core/vector_core.dart';
import 'package:vector/app/app.dart';
import 'package:vector/bootstrap.dart';
import 'package:vector/config/environment.dart';

Future<void> main() async {
  final envConfig = EnvironmentFactory.create(Environment.staging);
  await bootstrap(() => const App(), envConfig);
}
