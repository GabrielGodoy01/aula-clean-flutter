import 'package:clean_dart_aula/comidas/infra/models/comida_model.dart';

abstract class ComidaDatasourceInterface {
  ComidaModel getComida();
}
