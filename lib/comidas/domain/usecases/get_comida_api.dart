import '../entities/comida_entity.dart';
import '../infra/comida_repository_interface.dart';

class GetComidaApi {
  final ComidaRepositoryInterface repository;

  GetComidaApi({required this.repository});

  Comida getComida() {
    return repository.getComida();
  }
}
