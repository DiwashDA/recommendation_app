import 'package:architectureboilerplate/base/base_view.dart';
import 'package:architectureboilerplate/ui/dashboard/dashboard_view_model.dart';
import 'package:flutter/cupertino.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<DashboardViewModel>(builder: (context, model, child) {
      return body(model, context);
    });
  }

  body(DashboardViewModel model, BuildContext context) {}
}
