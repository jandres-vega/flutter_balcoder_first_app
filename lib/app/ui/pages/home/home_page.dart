import 'package:flutter/material.dart';
import 'package:flutter_balcoder_first_app/app/domain/repository/authentication_repository.dart';
import '../../../inject_dependencies.dart';
import '../../../utils/widget/main_scaffold.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MainScaffold(
          title: 'Home',
          showDrawer: true,
          child: ElevatedButton(
              onPressed: ()async{
                await getIt<AuthenticationRepository>().signOut();
                Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
              },
              child: const Text('Go to Register')
          )
      ),
    );
  }
}
