import 'package:flutter/material.dart';
import 'package:labfluttercsa/dynamic_link_service.dart';

class ServiciosPage extends StatefulWidget {
  const ServiciosPage({super.key});

  @override
  State<ServiciosPage> createState() => _ServiciosPageState();
}

class _ServiciosPageState extends State<ServiciosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: Text('Dynamic Link Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final DynamicLinkService dynamicLinkService = DynamicLinkService();
            String dynamicLink = await dynamicLinkService.createDynamicLink();
            
            // ignore: use_build_context_synchronously
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Enlace Dinámico Generado'),
                  content: SelectableText(dynamicLink),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cerrar'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Generar Enlace Dinámico'),
        ),
      ),
    );
  }
}
