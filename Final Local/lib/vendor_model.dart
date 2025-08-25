class Vendor {
  final String name;
  final String owner;
  final String category;
  final String phone;
  final String description;
  final double latitude;
  final double longitude;

  Vendor({
    required this.name,
    required this.owner,
    required this.category,
    required this.phone,
    required this.description,
    required this.latitude,
    required this.longitude,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) {
    return Vendor(
      name: json['name'] ?? '',
      owner: json['owner'] ?? '',
      category: json['category'] ?? '',
      phone: json['phone'] ?? '',
      description: json['description'] ?? '',
      latitude: (json['latitude'] is double)
          ? json['latitude']
          : double.tryParse(json['latitude'].toString()) ?? 0.0,
      longitude: (json['longitude'] is double)
          ? json['longitude']
          : double.tryParse(json['longitude'].toString()) ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'owner': owner,
      'category': category,
      'phone': phone,
      'description': description,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
