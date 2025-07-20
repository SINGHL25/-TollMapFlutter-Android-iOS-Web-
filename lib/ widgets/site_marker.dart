## 📄 lib/widgets/site_marker.dart
```dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/site_model.dart';

class SiteMarker {
  static Marker buildMarker(BuildContext context, SiteModel site) {
    return Marker(
      markerId: MarkerId(site.id),
      position: LatLng(site.lat, site.lng),
      infoWindow: InfoWindow(
        title: site.name,
        snippet: site.description,
        onTap: () => _showDetails(context, site),
      ),
    );
  }

  static void _showDetails(BuildContext context, SiteModel site) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(site.name),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(site.imageUrl),
            Text(site.description),
            TextButton(
              onPressed: () => {}, // TODO: Open Google Maps directions
              child: const Text("Get Directions"),
            )
          ],
        ),
      ),
    );
  }
}
```

