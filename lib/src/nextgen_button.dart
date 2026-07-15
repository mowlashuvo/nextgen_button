import 'package:flutter/material.dart';

/// A modern and highly customizable button widget.
///
/// Features:
///
/// * Text or custom widget title
/// * Gradient background
/// * Loading state
/// * Left and right icons
/// * Disabled state
/// * Border customization
/// * Material ripple effect
/// * Material 3 compatible
///
/// Either [title] or [titleText] must be provided.
///
/// Example:
///
/// ```dart
/// NextGenButton(
///   title: 'Continue',
///   height: 48,
///   width: double.infinity,
///   radius: 12,
///   color: Colors.blue,
///   onTap: () {},
/// )
/// ```
class NextGenButton extends StatelessWidget {
  /// Creates a [NextGenButton].
  ///
  /// Either [title] or [titleText] must be provided.
  const NextGenButton({
    super.key,
    required this.onTap,
    required this.height,
    required this.width,
    this.title,
    this.titleText,
    this.textStyle,
    this.color = Colors.white,
    this.gradient,
    this.borderColor = Colors.transparent,
    this.border = 0,
    this.radius = 0,
    this.elevation = 0,
    this.leftIcon,
    this.rightIcon,
    this.iconSpacing = 8,
    this.isLoading = false,
    this.loadingWidget,
    this.loadingColor,
    this.enabled = true,
    this.splashColor,
  }) : assert(
          title != null || titleText != null,
          'Either title or titleText must be provided.',
        );

  /// Callback invoked when the button is tapped.
  final VoidCallback onTap;

  /// Text displayed inside the button.
  ///
  /// Ignored when [titleText] is provided.
  final String? title;

  /// Custom widget displayed as the button title.
  ///
  /// This property is kept for backward compatibility.
  final Widget? titleText;

  /// Text style applied when using [title].
  final TextStyle? textStyle;

  /// Height of the button.
  final double height;

  /// Width of the button.
  final double width;

  /// Solid background color.
  ///
  /// Ignored when [gradient] is provided.
  final Color color;

  /// Gradient background.
  final Gradient? gradient;

  /// Border color.
  final Color borderColor;

  /// Border width.
  final double border;

  /// Corner radius.
  final double radius;

  /// Material elevation.
  final double elevation;

  /// Widget displayed before the title.
  final Widget? leftIcon;

  /// Widget displayed after the title.
  final Widget? rightIcon;

  /// Space between icon and title.
  final double iconSpacing;

  /// Whether to display a loading indicator.
  ///
  /// When true, the button is automatically disabled.
  final bool isLoading;

  /// Custom loading widget.
  ///
  /// If null, a [CircularProgressIndicator] is shown.
  final Widget? loadingWidget;

  /// Loading indicator color.
  final Color? loadingColor;

  /// Whether this button can be tapped.
  final bool enabled;

  /// Ripple splash color.
  final Color? splashColor;

  Widget _buildTitle(BuildContext context) {
    if (titleText != null) {
      return titleText!;
    }

    return Text(
      title!,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: textStyle ??
          Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.w600,
              ),
    );
  }

  Widget _buildLoading(BuildContext context) {
    return loadingWidget ??
        SizedBox(
          width: 18,
          height: 18,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: loadingColor ?? Theme.of(context).colorScheme.onPrimary,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(radius);

    return Material(
      color: Colors.transparent,
      elevation: elevation,
      borderRadius: borderRadius,
      child: Ink(
        decoration: BoxDecoration(
          color: gradient == null ? color : null,
          gradient: gradient,
          borderRadius: borderRadius,
          border: Border.all(
            color: borderColor,
            width: border,
          ),
        ),
        child: InkWell(
          borderRadius: borderRadius,
          splashColor: splashColor,
          onTap: enabled && !isLoading ? onTap : null,
          child: SizedBox(
            height: height,
            width: width,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (isLoading) ...[
                    _buildLoading(context),
                    SizedBox(width: iconSpacing),
                  ],
                  if (leftIcon != null) ...[
                    leftIcon!,
                    SizedBox(width: iconSpacing),
                  ],
                  Flexible(
                    child: DefaultTextStyle.merge(
                      overflow: TextOverflow.ellipsis,
                      child: _buildTitle(context),
                    ),
                  ),
                  if (rightIcon != null) ...[
                    SizedBox(width: iconSpacing),
                    rightIcon!,
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
