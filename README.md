# 📚 Bookly App

A modern Flutter application for discovering and exploring books using the Google Books API.

Bookly provides a clean and simple experience for browsing books, viewing book details, and discovering similar books.

---

## ✨ Features

- 📚 Browse books
- 🔍 Search and discover books
- 📖 View detailed book information
- 🔗 Open book preview
- 📚 Discover similar books
- 🌐 Fetch books using REST API
- ⚡ Fast and responsive UI
- ❌ Error handling for API requests
- 🔄 State management with Cubit / BLoC

---

## 🛠️ Technologies & Tools

- 💙 Flutter
- 🎯 Dart
- 🧠 BLoC / Cubit
- 🔄 MVVM Pattern
- 🌐 REST API
- 🚀 Dio
- 📦 Dartz
- 🧩 Equatable
- 🌿 Git & GitHub

---

## 🏗️ Project Structure

The project is organized into separate layers to keep the code clean and maintainable.

```text
lib/
│
├── Features/
│   └── home/
│       ├── data/
│       │   ├── model/
│       │   └── repos/
│       │
│       └── presentation/
│           ├── manager/
│           └── view/
│
└── core/
    ├── errors/
    ├── utils/
    └── widgets/
