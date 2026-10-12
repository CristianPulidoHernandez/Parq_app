import 'package:flutter/material.dart';
import '../data/mock_parkings.dart';
import '../widgets/parking_card.dart';
import 'spot_detail_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar Estacionamiento'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Filtros próximamente')),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: mockParkingSpots.length,
        itemBuilder: (context, index) {
          final spot = mockParkingSpots[index];
          return ParkingCard(
            spot: spot,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SpotDetailScreen(spot: spot),
                ),
              );
            },
          );
        },
      ),
    );
  }
}