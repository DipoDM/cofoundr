import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../constants/constant.dart';

class AppDropdownField extends StatelessWidget {
  final List<String> items;
  final String? value;
  final String hintText;
  final void Function(String?) onChanged;

  const AppDropdownField({
    super.key,
    required this.items,
    required this.value,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      value: value,
      hint: Text(hintText),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
        filled: true,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
          borderSide: BorderSide.none,
        ),
      ),
      items: items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(item),
                ),
              ))
          .toList(),
      onChanged: onChanged,
      dropdownStyleData: DropdownStyleData(
        maxHeight: 260,
        padding: const EdgeInsets.symmetric(vertical: 8),
        offset: const Offset(0, -5),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
        ),
      ),
      iconStyleData: const IconStyleData(
        icon: Icon(Icons.keyboard_arrow_down_rounded),
        iconSize: 24,
        iconEnabledColor: AppColors.deepGreen,
      ),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        height: 48,
      ),
    );
  }
}
