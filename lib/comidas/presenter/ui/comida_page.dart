import 'package:clean_dart_aula/comidas/domain/usecases/get_comida_api.dart';
import 'package:clean_dart_aula/comidas/external/datasource/comida_datasource_impl.dart';
import 'package:clean_dart_aula/comidas/infra/repository/comida_repository_impl.dart';
import 'package:flutter/material.dart';

import '../controllers/page_controller.dart';

class ComidaPage extends StatefulWidget {
  const ComidaPage({super.key});

  @override
  State<ComidaPage> createState() => _ComidaPageState();
}

class _ComidaPageState extends State<ComidaPage> {
  var controller = ComidaPageController(
      getComidaApi: GetComidaApi(
          repository:
              ComidaRepositoryImpl(datasource: ComidaDatasourceImpl())));
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(controller.comida.id),
          Text(controller.comida.nome),
        ],
      ),
    );
  }
}
