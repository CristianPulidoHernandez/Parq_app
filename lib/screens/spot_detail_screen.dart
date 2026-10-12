import 'package:flutter/material.dart';
import '../models/parking_spot.dart';

class SpotDetailScreen extends StatelessWidget {
  final ParkingSpot spot;

  const SpotDetailScreen({super.key, required this.spot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(spot.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(spot.imageUrl, height: 220, width: double.infinity, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(spot.title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(spot.address, style: const TextStyle(fontSize: 16, color: Colors.grey)),
                  const Divider(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Tarifa por hora:', style: TextStyle(fontSize: 16)),
                      Text('\$${spot.pricePerHour} MXN', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text('Reglas y amenidades:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text('• Acceso controlado con portón manual.\n• Altura máxima recomendada: 2.10m.\n• Cámaras de seguridad en la entrada.'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: const Text('¡Reserva Simulada!'),
                content: Text('Has solicitado apartar: ${spot.title}.\n(Simulación local sin backend)'),
                actions: [
                  TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Entendido')),
                ],
              ),
            );
          },
          child: const Text('Apartar este lugar', style: TextStyle(fontSize: 16, color: Colors.white)),
        ),
      ),
    );
  }
}