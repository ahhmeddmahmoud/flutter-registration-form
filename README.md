# 📝 Registration Form — Flutter

A Flutter registration screen with real-time input validation, built with clean, reusable widgets and a clear separation between UI and validation logic.

> **Note:** This project focuses on form UI and client-side validation. There is no backend, account creation, or data persistence — submitting a valid form simply displays a success message.

<br>

## 📱 Preview

<!-- Add your demo GIF or screenshots here after uploading them to the repo -->
<p align="center">
  <img src="demo.gif" width="300">
</p>

<br>

## ✨ Key Features

- **Real-Time Validation** — Name, email, password, and confirm password fields validate as the user types
- **Custom Text Field Widget** — Reusable input component with built-in error display
- **Password Visibility Toggle** — Show/hide icon for both password and confirm password fields
- **Email Format Checking** — Regex-based validation to ensure a properly formatted email
- **Password Matching** — Confirm password field checks against the original password
- **Custom App Bar** — Reusable app bar widget with a back button and centered title
- **Success Feedback** — Clear confirmation message shown once all fields pass validation

<br>

## 🛠️ Built With

- [Flutter](https://flutter.dev)
- [Dart](https://dart.dev)

<br>

## 🚀 Getting Started

Clone the repository and run it locally:

```bash
git clone https://github.com/ahhmeddmahmoud/registration-form-flutter.git
cd registration-form-flutter
flutter pub get
flutter run
```

<br>

## 🧠 What I Practiced

- Separating validation logic into a dedicated utility class (`Validators`)
- Building reusable, parameterized widgets (`CustomTextField`, `RegisterButton`, `RegistrationAppbar`)
- Managing form state with `StatefulWidget` and multiple `TextEditingController`s
- Implementing real-time field validation with immediate error feedback
- Using regular expressions for input validation (email format)
- Structuring a Flutter project with a clear `screens/`, `widgets/`, and `utils/` architecture

<br>

## 📌 Planned Improvements

- 🔜 Connect to a backend for real account creation (Firebase Auth)
- 🔜 Add password strength indicator
- 🔜 Add loading state during submission
- 🔜 Form field animations for better UX feedback

<br>

## 👤 Author

**Ahmed Mahmoud**
Flutter Developer | Computer Science Student

- GitHub: [@ahhmeddmahmoud](https://github.com/ahhmeddmahmoud)
- LinkedIn: [Ahmed Mahmoud](https://www.linkedin.com/in/ahmed-mahmoud-5b033a386)
- Email: ahmedsaada500@gmail.com
