# -TollMapFlutter-Android-iOS-Web-
View tolling sites on a map (Folium, Leaflet, or Google Maps)-Works on mobile and web


🚦 Tolling Site Map App (Flutter Cross-Platform)
This Flutter app displays tolling or transport-related sites on an interactive map using Google Maps or Leaflet (web). It allows users to view site details, get directions, and upload new site information in admin mode.

Supports:
✅ Android
✅ iOS
✅ Web

✨ Features
📍 View tolling/transport sites on a map

🖼️ Click a marker to see name, photo & Google Maps direction

🧑‍💼 Admin mode to upload new site info (name, lat/lng, image)

🔄 Real-time sync with Firebase Firestore

🧪 Works in test mode (offline JSON) and production (Firestore)

🗂 Project Structure
bash
Copy
Edit
flutter_tolling_map/
 ┣ 📁 lib
 ┃ ┣ main.dart
 ┃ ┣ 📁 screens
 ┃ ┃ ┣ home_screen.dart         # Main menu/dashboard
 ┃ ┃ ┗ map_screen.dart          # Map and site display
 ┃ ┣ 📁 widgets
 ┃ ┃ ┗ site_marker.dart         # Map marker UI
 ┃ ┣ 📁 services
 ┃ ┃ ┗ firebase_service.dart    # Firestore add/get logic
 ┃ ┣ 📁 models
 ┃ ┃ ┗ site_model.dart          # Data model for toll sites
 ┣ 📁 assets
 ┃ ┗ site_data.json             # Sample data (used if offline)
 ┣ pubspec.yaml
 ┗ README.md
🧪 Demo Screenshots
Home	Map View	Upload Site

🚀 Getting Started
1. Clone the Repo
bash
Copy
Edit
git clone https://github.com/yourusername/flutter_tolling_map.git
cd flutter_tolling_map
2. Install Dependencies
bash
Copy
Edit
flutter pub get
3. Run the App
bash
Copy
Edit
flutter run -d chrome        # For Web
flutter run -d android       # For Android
flutter run -d ios           # For iOS
🔥 Firebase Setup (Dynamic Mode)
Go to Firebase Console

Create new project → Add Android and Web

Add your google-services.json in /android/app/

Enable Firestore in Firebase

Add these dependencies to pubspec.yaml:

yaml
Copy
Edit
firebase_core: ^2.0.0
cloud_firestore: ^4.0.0
Initialize Firebase in main.dart:

dart
Copy
Edit
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
Use FirebaseService to fetch/add site data.

📄 Sample JSON Format (site_data.json)
json
Copy
Edit
[
  {
    "name": "TSR Toll Plaza",
    "latitude": -37.8136,
    "longitude": 144.9631,
    "imageUrl": "https://example.com/toll.jpg"
  },
  {
    "name": "M8 Western Link",
    "latitude": -33.8708,
    "longitude": 151.2073,
    "imageUrl": "https://example.com/west.jpg"
  }
]
📦 Build Web Release
bash
Copy
Edit
flutter build web
Then deploy contents of build/web/ to Firebase Hosting or Netlify.

✅ To-Do & Ideas
 Admin form to upload new site

 Firebase integration

 Role-based login (Admin/User)

 Cluster markers on large maps

 Offline caching with Hive

🙋‍♂️ Maintainer
Akhilesh Kumar Singh
📫 akhi.singh1989@gmail.com

📄 License
MIT License. Free to use and modify.
