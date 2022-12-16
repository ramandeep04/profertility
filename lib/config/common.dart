import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class Common {
  Future<dynamic> countryCodePicker(
      BuildContext context, Function(Country) onSelect) async {
    showCountryPicker(
      context: context,
      favorite: ["US", "IN"],
      showPhoneCode: true,
      onSelect: onSelect,
      searchAutofocus: false,
      countryListTheme:  CountryListThemeData(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        // Optional. Styles the search field.
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
          
          labelText: 'Search',
          hintText: 'Search country',
          prefixIcon: const Icon(
            Icons.search,
            // color: AppColors.colorPrimary,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
            ),
          ),
        ),
      ),
    );
  }
}
