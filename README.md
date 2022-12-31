# Finance App

An finance app created with Flutter and Firebase. Inspired by [Amelia Nurvita🐻](https://dribbble.com/shots/19433674-iMbank-Finance-Mobile-App) design.

[![forthebadge](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMTUuNzEiIGhlaWdodD0iMzUiIHZpZXdCb3g9IjAgMCAyMTUuNzEgMzUiPjxyZWN0IGNsYXNzPSJzdmdfX3JlY3QiIHg9IjAiIHk9IjAiIHdpZHRoPSIxMTUuMzEiIGhlaWdodD0iMzUiIGZpbGw9IiMzMUM0RjMiLz48cmVjdCBjbGFzcz0ic3ZnX19yZWN0IiB4PSIxMTMuMzEiIHk9IjAiIHdpZHRoPSIxMDIuNCIgaGVpZ2h0PSIzNSIgZmlsbD0iIzM4OUFENSIvPjxwYXRoIGNsYXNzPSJzdmdfX3RleHQiIGQ9Ik0xNS42OSAyMkwxNC4yMiAyMkwxNC4yMiAxMy40N0wxNi4xNCAxMy40N0wxOC42MCAyMC4wMUwyMS4wNiAxMy40N0wyMi45NyAxMy40N0wyMi45NyAyMkwyMS40OSAyMkwyMS40OSAxOS4xOUwyMS42NCAxNS40M0wxOS4xMiAyMkwxOC4wNiAyMkwxNS41NSAxNS40M0wxNS42OSAxOS4xOUwxNS42OSAyMlpNMjguNDkgMjJMMjYuOTUgMjJMMzAuMTcgMTMuNDdMMzEuNTAgMTMuNDdMMzQuNzMgMjJMMzMuMTggMjJMMzIuNDkgMjAuMDFMMjkuMTggMjAuMDFMMjguNDkgMjJaTTMwLjgzIDE1LjI4TDI5LjYwIDE4LjgyTDMyLjA3IDE4LjgyTDMwLjgzIDE1LjI4Wk00MS4xNCAyMkwzOC42OSAyMkwzOC42OSAxMy40N0w0MS4yMSAxMy40N1E0Mi4zNCAxMy40NyA0My4yMSAxMy45N1E0NC4wOSAxNC40OCA0NC41NyAxNS40MFE0NS4wNSAxNi4zMyA0NS4wNSAxNy41Mkw0NS4wNSAxNy41Mkw0NS4wNSAxNy45NVE0NS4wNSAxOS4xNiA0NC41NyAyMC4wOFE0NC4wOCAyMS4wMCA0My4xOSAyMS41MFE0Mi4zMCAyMiA0MS4xNCAyMkw0MS4xNCAyMlpNNDAuMTcgMTQuNjZMNDAuMTcgMjAuODJMNDEuMTQgMjAuODJRNDIuMzAgMjAuODIgNDIuOTMgMjAuMDlRNDMuNTUgMTkuMzYgNDMuNTYgMTcuOTlMNDMuNTYgMTcuOTlMNDMuNTYgMTcuNTJRNDMuNTYgMTYuMTMgNDIuOTYgMTUuNDBRNDIuMzUgMTQuNjYgNDEuMjEgMTQuNjZMNDEuMjEgMTQuNjZMNDAuMTcgMTQuNjZaTTU1LjA5IDIyTDQ5LjUxIDIyTDQ5LjUxIDEzLjQ3TDU1LjA1IDEzLjQ3TDU1LjA1IDE0LjY2TDUxLjAwIDE0LjY2TDUxLjAwIDE3LjAyTDU0LjUwIDE3LjAyTDU0LjUwIDE4LjE5TDUxLjAwIDE4LjE5TDUxLjAwIDIwLjgyTDU1LjA5IDIwLjgyTDU1LjA5IDIyWk02Ni42NSAyMkw2NC42OCAxMy40N0w2Ni4xNSAxMy40N0w2Ny40NyAxOS44OEw2OS4xMCAxMy40N0w3MC4zNCAxMy40N0w3MS45NiAxOS44OUw3My4yNyAxMy40N0w3NC43NCAxMy40N0w3Mi43NyAyMkw3MS4zNSAyMkw2OS43MyAxNS43N0w2OC4wNyAyMkw2Ni42NSAyMlpNODAuMzggMjJMNzguOTAgMjJMNzguOTAgMTMuNDdMODAuMzggMTMuNDdMODAuMzggMjJaTTg2Ljg3IDE0LjY2TDg0LjIzIDE0LjY2TDg0LjIzIDEzLjQ3TDkxLjAwIDEzLjQ3TDkxLjAwIDE0LjY2TDg4LjM0IDE0LjY2TDg4LjM0IDIyTDg2Ljg3IDIyTDg2Ljg3IDE0LjY2Wk05Ni4yNCAyMkw5NC43NSAyMkw5NC43NSAxMy40N0w5Ni4yNCAxMy40N0w5Ni4yNCAxNy4wMkwxMDAuMDUgMTcuMDJMMTAwLjA1IDEzLjQ3TDEwMS41MyAxMy40N0wxMDEuNTMgMjJMMTAwLjA1IDIyTDEwMC4wNSAxOC4yMUw5Ni4yNCAxOC4yMUw5Ni4yNCAyMloiIGZpbGw9IiNGRkZGRkYiLz48cGF0aCBjbGFzcz0ic3ZnX190ZXh0IiBkPSJNMTI5Ljg4IDIyTDEyNy41MCAyMkwxMjcuNTAgMTMuNjBMMTM0LjA5IDEzLjYwTDEzNC4wOSAxNS40NEwxMjkuODggMTUuNDRMMTI5Ljg4IDE3LjI4TDEzMy41OSAxNy4yOEwxMzMuNTkgMTkuMTJMMTI5Ljg4IDE5LjEyTDEyOS44OCAyMlpNMTQ1LjA3IDIyTDEzOC42OCAyMkwxMzguNjggMTMuNjBMMTQxLjA2IDEzLjYwTDE0MS4wNiAyMC4xMUwxNDUuMDcgMjAuMTFMMTQ1LjA3IDIyWk0xNDkuNDIgMTguMjZMMTQ5LjQyIDE4LjI2TDE0OS40MiAxMy42MEwxNTEuODAgMTMuNjBMMTUxLjgwIDE4LjE5UTE1MS44MCAyMC4yMCAxNTMuMzkgMjAuMjBMMTUzLjM5IDIwLjIwUTE1NC45NyAyMC4yMCAxNTQuOTcgMTguMTlMMTU0Ljk3IDE4LjE5TDE1NC45NyAxMy42MEwxNTcuMzIgMTMuNjBMMTU3LjMyIDE4LjI2UTE1Ny4zMiAyMC4xMyAxNTYuMjggMjEuMTVRMTU1LjI0IDIyLjE3IDE1My4zNyAyMi4xN0wxNTMuMzcgMjIuMTdRMTUxLjQ5IDIyLjE3IDE1MC40NSAyMS4xNVExNDkuNDIgMjAuMTMgMTQ5LjQyIDE4LjI2Wk0xNjQuMjAgMTUuNDhMMTYxLjYxIDE1LjQ4TDE2MS42MSAxMy42MEwxNjkuMTMgMTMuNjBMMTY5LjEzIDE1LjQ4TDE2Ni41NyAxNS40OEwxNjYuNTcgMjJMMTY0LjIwIDIyTDE2NC4yMCAxNS40OFpNMTc1LjMwIDE1LjQ4TDE3Mi43MSAxNS40OEwxNzIuNzEgMTMuNjBMMTgwLjI0IDEzLjYwTDE4MC4yNCAxNS40OEwxNzcuNjcgMTUuNDhMMTc3LjY3IDIyTDE3NS4zMCAyMkwxNzUuMzAgMTUuNDhaTTE5MS4zNSAyMkwxODQuNjEgMjJMMTg0LjYxIDEzLjYwTDE5MS4yMCAxMy42MEwxOTEuMjAgMTUuNDRMMTg2Ljk2IDE1LjQ0TDE4Ni45NiAxNi44NUwxOTAuNzAgMTYuODVMMTkwLjcwIDE4LjYzTDE4Ni45NiAxOC42M0wxODYuOTYgMjAuMTdMMTkxLjM1IDIwLjE3TDE5MS4zNSAyMlpNMTk4LjU0IDIyTDE5Ni4xNiAyMkwxOTYuMTYgMTMuNjBMMjAwLjAwIDEzLjYwUTIwMS4xNCAxMy42MCAyMDEuOTggMTMuOThRMjAyLjgyIDE0LjM1IDIwMy4yOCAxNS4wNlEyMDMuNzMgMTUuNzYgMjAzLjczIDE2LjcxTDIwMy43MyAxNi43MVEyMDMuNzMgMTcuNjIgMjAzLjMxIDE4LjMwUTIwMi44OCAxOC45OCAyMDIuMDkgMTkuMzZMMjAyLjA5IDE5LjM2TDIwMy45MCAyMkwyMDEuMzYgMjJMMTk5LjgzIDE5Ljc3TDE5OC41NCAxOS43N0wxOTguNTQgMjJaTTE5OC41NCAxNS40N0wxOTguNTQgMTcuOTNMMTk5Ljg2IDE3LjkzUTIwMC41OSAxNy45MyAyMDAuOTYgMTcuNjFRMjAxLjMzIDE3LjI5IDIwMS4zMyAxNi43MUwyMDEuMzMgMTYuNzFRMjAxLjMzIDE2LjEyIDIwMC45NiAxNS43OVEyMDAuNTkgMTUuNDcgMTk5Ljg2IDE1LjQ3TDE5OS44NiAxNS40N0wxOTguNTQgMTUuNDdaIiBmaWxsPSIjRkZGRkZGIiB4PSIxMjYuMzEiLz48L3N2Zz4=)](https://flutter.dev)

## Screenshots

Inspiration
![Inpired By](https://cdn.dribbble.com/users/4646232/screenshots/19433674/media/f301263e33a7d5c96e53d6da6bfd5689.png?compress=1&resize=1000x750&vertical=top)

## Tech Stack

**App:** Futter

**Infrastructure:** Firebase

## Run Locally

Clone the project

```bash
  git clone https://github.com/emirchus/finance_app.git
```

Go to the project directory

```bash
  cd finance_app
```

Install dependencies

```bash
  flutter pub get
```

Run command

```bash
flutter run
```

## Deployment

To build this project for android run

| Platform  | Command                             | Description                             |
| :-------- | :---------------------------------- | :-------------------------------------- |
| `android` | `flutter build appbundle --release` | Build appbundle for upload to PlatStore |
| `ios`     | `flutter build ios --release`       | Build ios package for AppStore          |
| `web`     | `flutter build web --release`       | Build web bundle for Deployment         |
| `windows` | `flutter build windows --release`   | Build windows exe                       |
| `mac`     | `flutter build mac --release`       | Build mac cocopots                      |
| `linux`   | `flutter build linux --release`     | Build linux tar.gz                      |

## Running Tests

To run tests, run the following command

```bash
  flutter run test
```

## Features

- Light/dark mode toggle
- Current balance
- Current Expenses
- Evolution of income
- Evolution of expenses
- Cross platform

## Feedback

If you have any feedback, please reach out to us at [@emirchus](https://twitter.com/emirchus)

## Authors

- [@emirchus](https://www.github.com/emirchus)
