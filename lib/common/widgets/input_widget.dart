import 'package:electric_mng_app/common/theme/common.dart';
import 'package:flutter/material.dart';

/**
 * @author Nguyen Trung Anh
 * @created 10/06/2024
 */

class InputWidget extends StatelessWidget {
  final String? hintText;
  final Function(String value)? onChange;
  final Function(String value)? validatior;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? value;
  final bool? enabled;
  const InputWidget({super.key, this.hintText, this.onChange, this.keyboardType, this.obscureText, this.value, this.enabled, this.validatior});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      onChanged: onChange,
      keyboardType: keyboardType,
      initialValue: value,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      validator: (data) => validatior!(data!),
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText ?? "",
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color:primaryColor),
        ),
      ),
    );
  }
}

