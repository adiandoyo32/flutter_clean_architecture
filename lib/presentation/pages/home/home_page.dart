import 'package:flutter/material.dart';
import 'package:flutter_getx_architecture/data/datasource/local_repository_impl.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              LocalRepositoryImpl().clearAllData();
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
