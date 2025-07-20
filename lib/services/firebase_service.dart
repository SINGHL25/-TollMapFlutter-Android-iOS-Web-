## 📄 lib/services/firebase_service.dart
```dart
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/site_model.dart';

class FirebaseService {
  static Future<List<SiteModel>> getSites() async {
    final snapshot = await FirebaseFirestore.instance.collection('toll_sites').get();
    return snapshot.docs.map((doc) => SiteModel.fromFirestore(doc)).toList();
  }
}
```
