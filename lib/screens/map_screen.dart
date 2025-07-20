## 📄 lib/screens/map_screen.dart
```dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/site_model.dart';
import '../services/firebase_service.dart';
import '../widgets/site_marker.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(-33.8688, 151.2093);
  List<SiteModel> sites = [];

  @override
  void initState() {
    super.initState();
    loadSites();
  }

  void loadSites() async {
    final data = await FirebaseService.getSites();
    setState(() {
      sites = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tolling Sites Map')),
      body: GoogleMap(
        onMapCreated: (controller) => mapController = controller,
        initialCameraPosition: CameraPosition(target: _center, zoom: 10),
        markers: sites
            .map((site) => SiteMarker.buildMarker(context, site))
            .toSet(),
      ),
    );
  }
}
```

