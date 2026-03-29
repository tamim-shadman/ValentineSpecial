# 💝 ValentineSpecial

A cute Flutter app to ask your special someone to be your Valentine! The app displays a romantic message along with a photo and a **"Yes!"** button that opens WhatsApp with a pre-written love message.

---

## ✨ Features

- Displays a full-screen photo of your loved one
- Romantic "Will you be my Valentine?" message
- **"Yes!"** button that launches WhatsApp with a preset message
- Beautiful gradient button and heart icon
- Uses the elegant [Pacifico](https://fonts.google.com/specimen/Pacifico) font via `google_fonts`

---

## 📸 Screenshots

> Replace `assets/maki.jpg` with your own photo to personalise the app.

---

## 🚀 Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) SDK `>=2.19.1 <3.0.0`
- A connected device or emulator

### Installation

```bash
git clone https://github.com/tamim-shadman/ValentineSpecial.git
cd ValentineSpecial
flutter pub get
flutter run
```

---

## 🛠️ Customisation

| What to change | Where |
|---|---|
| Photo | Replace `assets/maki.jpg` with your own image |
| WhatsApp phone number | `lib/main.dart` — update the `phone` variable |
| WhatsApp pre-written message | `lib/main.dart` — update the `message` variable |
| App icon | Replace `assets/logo.png` and run `flutter pub run flutter_launcher_icons` |

---

## 📦 Dependencies

| Package | Purpose |
|---|---|
| [`google_fonts`](https://pub.dev/packages/google_fonts) | Pacifico font |
| [`url_launcher`](https://pub.dev/packages/url_launcher) | Open WhatsApp link |
| [`cupertino_icons`](https://pub.dev/packages/cupertino_icons) | iOS-style icons |
| [`flutter_launcher_icons`](https://pub.dev/packages/flutter_launcher_icons) | Custom app icon |

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
