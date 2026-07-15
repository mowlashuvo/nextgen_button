# NextGen Button

<p align="center">
A modern, lightweight, and highly customizable Flutter button widget with support for gradients, icons, loading states, disabled states, custom text styles, and Material 3.
</p>

<p align="center">
  <img src="https://img.shields.io/pub/v/nextgen_button.svg" alt="pub version">
  <img src="https://img.shields.io/badge/platform-Flutter-blue.svg" alt="Flutter">
  <img src="https://img.shields.io/badge/license-MIT-green.svg" alt="License">
</p>

---

## ✨ Features

- 🎨 Solid color or gradient background
- 📝 Simple text API (`title`)
- 🧩 Custom widget title (`titleText`)
- 🎯 Custom text style
- 🖼️ Left and right icons
- ⏳ Built-in loading state
- 🔄 Custom loading widget
- 🌈 Custom loading indicator color
- 🚫 Disabled state
- 💦 Ripple (InkWell) customization
- 📐 Custom height and width
- 🔲 Border & border radius customization
- 🌟 Elevation support
- 📱 Material 3 compatible
- 🔄 Backward compatible (`titleText`)

---

# 📷 Preview

> Add a screenshot after publishing.

```
assets/preview.png
```

```markdown
![Preview](assets/preview.png)
```

---

# 🚀 Installation

Add the package to your `pubspec.yaml`.

```yaml
dependencies:
  nextgen_button: ^1.0.0
```

Install it.

```bash
flutter pub get
```

Import the package.

```dart
import 'package:nextgen_button/nextgen_button.dart';
```

---

# 📖 Basic Usage

```dart
NextGenButton(
  title: "Continue",
  height: 50,
  width: 220,
  radius: 14,
  color: Colors.blue,
  onTap: () {
    debugPrint("Button clicked");
  },
)
```

---

# 🎨 Gradient Button

```dart
NextGenButton(
  title: "Get Started",
  height: 52,
  width: double.infinity,
  radius: 16,
  gradient: const LinearGradient(
    colors: [
      Colors.blue,
      Colors.purple,
    ],
  ),
  onTap: () {},
)
```

---

# 🖼️ Button With Icons

```dart
NextGenButton(
  title: "Continue",
  height: 50,
  width: 220,
  radius: 14,
  color: Colors.blue,
  leftIcon: const Icon(
    Icons.arrow_forward,
    color: Colors.white,
  ),
  rightIcon: const Icon(
    Icons.chevron_right,
    color: Colors.white,
  ),
  onTap: () {},
)
```

---

# 🎯 Custom Text Style

```dart
NextGenButton(
  title: "Continue",
  height: 50,
  width: 220,
  color: Colors.blue,
  textStyle: const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  ),
  onTap: () {},
)
```

---

# ⏳ Loading Button

```dart
NextGenButton(
  title: "Uploading",
  height: 50,
  width: 220,
  color: Colors.green,
  isLoading: true,
  loadingColor: Colors.white,
  onTap: () {},
)
```

---

# 🔄 Custom Loading Widget

```dart
NextGenButton(
  title: "Uploading",
  height: 50,
  width: 220,
  isLoading: true,
  loadingWidget: const SizedBox(
    width: 18,
    height: 18,
    child: CircularProgressIndicator(
      strokeWidth: 2,
    ),
  ),
  onTap: () {},
)
```

---

# 🚫 Disabled Button

```dart
NextGenButton(
  title: "Disabled",
  height: 50,
  width: 220,
  color: Colors.grey,
  enabled: false,
  onTap: () {},
)
```

---

# 🧩 Custom Widget Title

```dart
NextGenButton(
  titleText: const Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        Icons.favorite,
        color: Colors.white,
      ),
      SizedBox(width: 8),
      Text(
        "Favorite",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  ),
  height: 50,
  width: 220,
  color: Colors.red,
  onTap: () {},
)
```

---

# 🔄 Backward Compatibility

Older versions using `titleText` continue to work without any changes.

```dart
NextGenButton(
  titleText: const Text(
    "Click Me",
    style: TextStyle(
      color: Colors.white,
    ),
  ),
  height: 50,
  width: 200,
  color: Colors.blue,
  onTap: () {},
)
```

---

# 📚 API Reference

| Property | Type | Description |
|----------|------|-------------|
| `title` | `String?` | Button text |
| `titleText` | `Widget?` | Custom title widget |
| `textStyle` | `TextStyle?` | Style for `title` |
| `onTap` | `VoidCallback` | Tap callback |
| `height` | `double` | Button height |
| `width` | `double` | Button width |
| `color` | `Color` | Solid background color |
| `gradient` | `Gradient?` | Gradient background |
| `borderColor` | `Color` | Border color |
| `border` | `double` | Border width |
| `radius` | `double` | Border radius |
| `elevation` | `double` | Material elevation |
| `leftIcon` | `Widget?` | Widget before title |
| `rightIcon` | `Widget?` | Widget after title |
| `iconSpacing` | `double` | Space between icon and title |
| `isLoading` | `bool` | Shows loading indicator |
| `loadingWidget` | `Widget?` | Custom loading widget |
| `loadingColor` | `Color?` | Default loading indicator color |
| `enabled` | `bool` | Enables/disables the button |
| `splashColor` | `Color?` | Ink ripple color |

---

# 📂 Example

The package includes a complete example application demonstrating:

- Basic button
- Gradient button
- Button with icons
- Loading button
- Custom loading widget
- Disabled button
- Custom widget title
- Backward compatibility

Run it with:

```bash
cd example
flutter run
```

---

# ❤️ Contributing

Contributions, issues, and feature requests are welcome.

If you find a bug or have an idea for improvement, feel free to open an issue or submit a pull request.

---

# 📄 License

This project is licensed under the MIT License.

---

Made with ❤️ using Flutter.