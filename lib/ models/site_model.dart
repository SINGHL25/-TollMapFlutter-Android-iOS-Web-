## 📄 lib/models/site_model.dart
```dart
import 'package:cloud_firestore/cloud_firestore.dart';

class SiteModel {
  final String id;
  final String name;
  final String description;
  final double lat;
  final double lng;
  final String imageUrl;

  SiteModel({
    required this.id,
    required this.name,
    required this.description,
    required this.lat,
    required this.lng,
    required this.imageUrl,
  });

  factory SiteModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return SiteModel(
      id: doc.id,
      name: data['name'],
      description: data['description'],
      lat: data['lat'],
      lng: data['lng'],
      imageUrl: data['imageUrl'],
    );
  }
}
```

---
