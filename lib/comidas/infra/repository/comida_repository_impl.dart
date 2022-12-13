import 'package:clean_dart_aula/comidas/domain/entities/comida_entity.dart';

import '../../domain/infra/comida_repository_interface.dart';
import '../datasources/comida_datasource_interface.dart';

class ComidaRepositoryImpl extends ComidaRepositoryInterface {
  final ComidaDatasourceInterface datasource;

  ComidaRepositoryImpl({required this.datasource});

  @override
  Comida getComida() {
    return datasource.getComida();
  }
}
