import 'package:flutter/material.dart';

class CustomPhoneField extends StatefulWidget {
  const CustomPhoneField({super.key,});

  @override
  State<CustomPhoneField> createState() => _CustomPhoneFieldState();
}

class _CustomPhoneFieldState extends State<CustomPhoneField> {
  String _selectedCountryCode = "+1";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      decoration: BoxDecoration(
        color: Color(0xffF2F3F7),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 8),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedCountryCode,
                icon: const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                items: <String>['+1', '+91', '+44', '+81']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Row(
                      children: [
                        Text(
                          value == '+1' ? '🇺🇸 ' : (value == '+91' ? '🇮🇳' : '🌍'),
                          style: const TextStyle(fontSize: 30),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '(USA) $value',
                          style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCountryCode = newValue!;
                  });
                },
              ),
            ),
          ),
          Container(
            width: 1,
            height: 30,
            color: Colors.grey[400],
            margin: const EdgeInsets.symmetric(horizontal: 5),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: "Enter Mobile Number",
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}