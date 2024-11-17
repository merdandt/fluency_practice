import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'dart:developer' as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}

class BaseInputTextField extends StatefulWidget {
  const BaseInputTextField({
    super.key,
    this.initialValue,
    this.controller,
    this.inputFormatters,
    this.readOnly = false,
    this.hintText,
    this.errorText,
    this.prefix,
    this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.onCleared,
    this.obscureText,
    this.suffixIcon,
    this.isFilled = false,
    this.isDisable = false,
    this.maxLines = 1,
    this.prefixConstrains,
    this.prefixText,
    this.autofocus = false,
    this.withBorder = true,
    this.fillColor,
    this.cursorHeight,
    this.textStyle,
    this.validator,
    this.hideSuffixOnTextEmpty = false,
    this.isOtp = false,
    this.autovalidateMode,
    this.focusNode,
    this.textInputAction,
  });

  /// A value to initialize the field to.
  final String? initialValue;

  /// Optional input validation and formatting overrides.
  final List<TextInputFormatter>? inputFormatters;

  final AutovalidateMode? autovalidateMode;

  /// Whether the text field should be read-only.
  ///
  /// Defaults to `false`.
  final bool readOnly;

  /// Text that suggests what sort of input the field accepts.
  final String? hintText;

  /// Text that appears below the field.
  final String? errorText;

  /// A widget that appears before the editable part of the text field.
  final Widget? prefix;

  /// A text that appears before the editable part of the text field.
  final String? prefixText;

  /// A widget that appears after the editable part of the text field.
  final Widget? suffixIcon;

  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController] and
  /// initialize its [TextEditingController.text] with [initialValue].
  final TextEditingController? controller;

  /// The type of keyboard to use for editing the text.
  /// Defaults to [TextInputType.text] if maxLines is one and
  /// [TextInputType.multiline] otherwise.
  final TextInputType? keyboardType;

  /// Called when the user inserts or deletes texts in the text field.
  final ValueChanged<String>? onChanged;

  /// {@macro flutter.widgets.editableText.onSubmitted}
  final ValueChanged<String>? onSubmitted;

  /// Called when the text field has been tapped.
  final VoidCallback? onTap;

  /// Called when the clear icon is tapped.
  final VoidCallback? onCleared;

  /// If true, then the text field obscures the text entered so that it cannot be read.
  final bool? obscureText;

  /// Whether the body of the text field is filled with color.
  final bool isFilled;

  final bool withBorder;

  /// Default is `false`
  final bool isDisable;

  final bool autofocus;

  final int maxLines;

  final BoxConstraints? prefixConstrains;

  final Color? fillColor;

  final double? cursorHeight;

  final TextStyle? textStyle;

  final FormFieldValidator<String>? validator;

  final bool hideSuffixOnTextEmpty;

  final bool isOtp;

  final FocusNode? focusNode;

  final TextInputAction? textInputAction;

  @override
  State<BaseInputTextField> createState() => _BaseInputTextFieldState();
}

class _BaseInputTextFieldState extends State<BaseInputTextField> {
  late bool _obscureText;
  late TextEditingController _textController;
  bool _controllerCreated = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText ?? false;
    _controllerCreated = widget.controller == null;
    _textController =
        widget.controller ?? TextEditingController(text: widget.initialValue);

    if (widget.hideSuffixOnTextEmpty) {
      _textController.addListener(_onTextChange);
    }
  }

  @override
  void didUpdateWidget(BaseInputTextField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.controller != oldWidget.controller) {
      if (_controllerCreated) {
        _textController.dispose();
      }
      _controllerCreated = widget.controller == null;
      _textController =
          widget.controller ?? TextEditingController(text: widget.initialValue);
    }

    // Only update the text if the initialValue has changed and is different from the current text
    if (widget.initialValue != oldWidget.initialValue &&
        widget.initialValue != _textController.text) {
      _textController.text = widget.initialValue ?? '';
    }
  }

  void _onTextChange() {
    setState(() {});
    '${_textController.text} TEXT CONTROLLER'.log();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    TextStyle? styles() {
      final isAndroid = defaultTargetPlatform == TargetPlatform.android;
      if (!widget.withBorder) {
        return theme.textTheme.displayMedium?.copyWith(
          color: widget.readOnly
              ? theme.colorScheme.outline
              : theme.colorScheme.primary,
          fontSize: widget.readOnly ? 20 : null,
        );
      } else if (widget.isDisable) {
        return theme.textTheme.bodyLarge?.copyWith(
          height: isAndroid ? 1.6 : null,
        );
      } else {
        return theme.textTheme.bodyLarge?.copyWith(
          height: isAndroid ? 1.6 : null,
        );
      }
    }

    return TextFormField(
      focusNode: widget.focusNode,
      textAlignVertical: TextAlignVertical.center,
      textAlign:
          widget.isOtp && !widget.readOnly ? TextAlign.center : TextAlign.start,
      enabled: !widget.isDisable,
      autofocus: widget.autofocus,
      autovalidateMode: widget.autovalidateMode,
      obscureText: _obscureText,
      controller: _textController,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      maxLines: widget.maxLines,
      readOnly: widget.readOnly,
      cursorColor: theme.primaryColor,
      style: styles(),
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      onTap: widget.onTap,
      textInputAction: widget.textInputAction,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      // Uncomment and adjust strutStyle if needed
      // strutStyle: defaultTargetPlatform == TargetPlatform.android && widget.withBorder
      //     ? StrutStyle.fromTextStyle(
      //         theme.textTheme.bodyLarge!.copyWith(
      //           height: 1.0,
      //         ),
      //       )
      //     : null,
    );
  }

  @override
  void dispose() {
    if (_controllerCreated) {
      _textController.dispose();
    }
    super.dispose();
  }
}
