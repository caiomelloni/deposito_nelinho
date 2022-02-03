import 'package:deposito_nelinho/components/header/drawer_widget.dart';
import 'package:deposito_nelinho/components/header/header_widget.dart';
import 'package:deposito_nelinho/controllers/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/site_body/site_body_widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainScreenController>(context, listen: false);
    return Scaffold(
      drawer: const DrawerWidget(),
      key: provider.getScaffoldKey,
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(_scrollController),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: const SiteBody(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

