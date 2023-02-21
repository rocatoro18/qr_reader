import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/utils/utils.dart';

class ScanTiles extends StatelessWidget {
  const ScanTiles({super.key, required this.tipo});

  final String tipo;

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;
    return Center(
      child: ListView.builder(
          itemCount: scans.length,
          itemBuilder: (_, i) => Dismissible(
                key: UniqueKey(),
                background: Container(
                  color: Colors.red,
                ),
                onDismissed: (DismissDirection direction) {
                  Provider.of<ScanListProvider>(context, listen: false)
                      .borrarScanPorId(scans[i].id!);
                },
                child: ListTile(
                  leading: Icon(tipo == 'http'
                      ? Icons.home_outlined
                      : Icons.map_outlined),
                  title: Text(scans[i].valor),
                  subtitle: Text(scans[i].id.toString()),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    launchURL(context, scans[i]);
                    print(scans[i].id);
                  },
                ),
              )),
    );
  }
}
