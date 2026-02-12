import 'package:flutter/material.dart';

/// Autocomplete text field for medium suggestions.
/// Optimized for performance with small datasets.
class MediumAutocompleteField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final List<String> options;
  final String? initialValue;
  final void Function(String?) onSelected;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool enabled;

  const MediumAutocompleteField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.options,
    this.initialValue,
    required this.onSelected,
    this.validator,
    this.controller,
    this.enabled = true,
  });

  @override
  State<MediumAutocompleteField> createState() =>
      _MediumAutocompleteFieldState();
}

class _MediumAutocompleteFieldState extends State<MediumAutocompleteField> {
  late final TextEditingController _controller;
  late String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _selectedValue = widget.initialValue;

    // Set initial text if value provided
    if (_selectedValue != null) {
      _controller.text = _selectedValue!;
    }
  }

  @override
  void didUpdateWidget(MediumAutocompleteField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      _selectedValue = widget.initialValue;
      if (_selectedValue != null) {
        _controller.text = _selectedValue!;
      }
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          // Show all options when field is empty
          return widget.options;
        }

        // Filter options based on input (case-insensitive)
        final query = textEditingValue.text.toLowerCase();
        return widget.options.where((option) {
          return option.toLowerCase().contains(query);
        });
      },
      displayStringForOption: (option) => option,
      fieldViewBuilder:
          (context, textEditingController, focusNode, onFieldSubmitted) {
            return TextFormField(
              controller: textEditingController,
              focusNode: focusNode,
              enabled: widget.enabled,
              decoration: InputDecoration(
                labelText: widget.labelText,
                hintText: widget.hintText,
                border: const OutlineInputBorder(),
                suffixIcon: textEditingController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          textEditingController.clear();
                          setState(() => _selectedValue = null);
                          widget.onSelected(null);
                        },
                      )
                    : null,
              ),
              validator: widget.validator,
            );
          },
      optionsViewBuilder: (context, onSelected, options) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 4.0,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 200, maxWidth: 300),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  final String option = options.elementAt(index);
                  return InkWell(
                    onTap: () => onSelected(option),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(option),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
      onSelected: (String selection) {
        setState(() => _selectedValue = selection);
        widget.onSelected(selection);
      },
    );
  }
}
