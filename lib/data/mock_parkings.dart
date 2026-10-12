import '../models/parking_spot.dart';

final List<ParkingSpot> mockParkingSpots = [
  ParkingSpot(
    id: 'p1',
    title: 'Cochera techada frente a biblioteca',
    address: 'Av. San Claudio 1204',
    pricePerHour: 18.0,
    rating: 4.8,
    vehicleType: 'Sedán / Compacto',
    imageUrl: 'https://images.unsplash.com/photo-1590674899484-d5640e854abe?w=500',
    isAvailable: true,
  ),
  ParkingSpot(
    id: 'p2',
    title: 'Estacionamiento amplio con portón eléctrico',
    address: 'Calle 18 Sur 2301',
    pricePerHour: 25.0,
    rating: 4.9,
    vehicleType: 'SUV / Camioneta',
    imageUrl: 'https://images.unsplash.com/photo-1506521781263-d8422e82f27a?w=500',
    isAvailable: true,
  ),
  ParkingSpot(
    id: 'p3',
    title: 'Espacio individual cerrado',
    address: 'Circunvalación 810',
    pricePerHour: 15.0,
    rating: 4.5,
    vehicleType: 'Cualquiera',
    imageUrl: 'https://images.unsplash.com/photo-1573348722427-f1d6819fdf98?w=500',
    isAvailable: false,
  ),
];