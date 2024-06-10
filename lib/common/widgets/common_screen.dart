import 'package:electric_mng_app/common/theme/common.dart';
import 'package:flutter/material.dart';

/**
 * @author Nguyen Trung Anh
 * @created 10/06/2024
 */
class CommonScreen extends StatefulWidget {

  final Widget? actionWidget;
  final Widget? leadingWidget;
  final Function() actionEvent;
  final Function()? leadingEvent;
  final String title;
  final Widget body;
  final Widget? bottomNavigationBar;

  const CommonScreen({super.key, this.actionWidget, this.leadingWidget, required this.actionEvent, this.leadingEvent, required this.title, required this.body, this.bottomNavigationBar});

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        actions: [
          widget.actionWidget != null ? IconButton(onPressed: widget.actionEvent, icon: widget.actionWidget!) : Container()
        ],
        leading: widget.leadingWidget != null ?IconButton(onPressed: widget.leadingEvent, icon: widget.leadingWidget!) : Container(),
        title: Center(
          child: Text(
            widget.title
          ),
        ),
      ),
      body: widget.body,
      bottomNavigationBar: widget.bottomNavigationBar ?? null,
    );
  }
}
