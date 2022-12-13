import 'package:clean_dart_aula/comidas/infra/datasources/comida_datasource_interface.dart';
import 'package:clean_dart_aula/comidas/infra/models/comida_model.dart';

class ComidaDatasourceImpl extends ComidaDatasourceInterface {
  @override
  ComidaModel getComida() {
    return ComidaModel(id: '1', nome: 'Banana');
  }
}
