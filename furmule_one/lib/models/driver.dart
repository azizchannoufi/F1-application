class Driver {
  final int id;
  final String nom;
  final String prenom;
  final String sponsor;
  final String image;

  Driver({required this.id, required this.nom, required this.prenom, required this.sponsor, required this.image});

  factory Driver.fromMap(Map<String, String> data) {
    return Driver(
      id: int.parse(data['id']!),
      nom: data['nom']!,
      prenom: data['prenom']!,
      sponsor: data['sponsor']!,
      image: data['image']!,
    );
  }
}