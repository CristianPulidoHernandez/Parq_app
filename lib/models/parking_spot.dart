class ParkingSpot {
  final String id;
  final String title;
  final String address;
  final double pricePerHour;
  final double rating;
  final String vehicleType; // "Compacto", "SUV", "Moto"
  final String imageUrl;
  final bool isAvailable;

  ParkingSpot({
    required this.id,
    required this.title,
    required this.address,
    required this.pricePerHour,
    required this.rating,
    required this.vehicleType,
    required this.imageUrl,
    required this.isAvailable,
  });
}