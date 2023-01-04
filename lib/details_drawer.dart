import 'package:flutter/material.dart';
import 'package:graphist/graph/base/node.dart';

class DetailsDrawer extends StatelessWidget {
  final Node? node;
  final VoidCallback onOpen;
  final VoidCallback onCopy;
  final VoidCallback onHide;

  const DetailsDrawer({
    super.key,
    required this.node,
    required this.onOpen,
    required this.onCopy,
    required this.onHide,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  node!.label,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.folder_open),
            title: const Text("Open"),
            onTap: () {
              Navigator.pop(context);
              onOpen();
            },
          ),
          ListTile(
            leading: const Icon(Icons.copy),
            title: const Text("Copy path to clipboard"),
            onTap: () {
              Navigator.pop(context);
              onCopy();
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete, color: Colors.deepOrange),
            title: const Text(
              "Delete",
              style: TextStyle(color: Colors.deepOrange),
            ),
            onTap: () {
              Navigator.pop(context);
              onHide();
            },
          ),
        ],
      ),
    );
  }
}
