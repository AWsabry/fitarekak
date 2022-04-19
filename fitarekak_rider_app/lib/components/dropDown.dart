import 'package:fitarekak_rider_app/components/text_field_container.dart';
import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const DropDownList({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  @override
  Widget build(BuildContext context) {
    String? _currentGender;

    return TextFieldContainer(
      child: DropdownButtonFormField<String>(
          dropdownColor: Colors.white,
          isExpanded: true,
          value: _currentGender,
          hint: const Text('Choose Your Gender'),
          items: ["Male", "Female"]
              .map((genders) => DropdownMenuItem(
                    child: Text(genders),
                    value: genders,
                  ))
              .toList(),
          onChanged: (val) {
            setState(() => _currentGender = val);
          }),
    );
  }
}
