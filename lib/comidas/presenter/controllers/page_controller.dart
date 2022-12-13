import 'package:clean_dart_aula/comidas/domain/entities/comida_entity.dart';
import 'package:clean_dart_aula/comidas/domain/usecases/get_comida_api.dart';

class ComidaPageController {
  final GetComidaApi getComidaApi;

  ComidaPageController({required this.getComidaApi}) {
    getComida();
  }

  late Comida comida;

  void getComida() {
    comida = getComidaApi.getComida();
  }
}
