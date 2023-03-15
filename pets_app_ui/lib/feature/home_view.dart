import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pets_app_ui/products/components/widgets/social_button_widget.dart';
import '../core/components/constants/colors/color_constants.dart';
import '../products/components/widgets/input_text_field_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({
    super.key,
  });

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Material App Bar',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              height: 50,
              child: InputTextFieldWidget(
                controller: controller,
                hintText: "",
                prefixIcon: Icons.email,
              )),
        ),
      ),
    );
  }
}
