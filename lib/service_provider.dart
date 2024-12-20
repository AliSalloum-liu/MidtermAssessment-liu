class ServiceProvider {
  final String name;
  final String profession;
  final String description;
  final String phone;
  final bool isIndividual;

  ServiceProvider({
    required this.name,
    required this.profession,
    required this.description,
    required this.phone,
    required this.isIndividual,
  });

  String get getName => name;
  String get getProfession => profession;
  String get getDescription => description;
  String get getPhone => phone;
  bool get getIsIndividual => isIndividual;

  @override
  String toString() {
    return 'Name: $name\nProfession: $profession\nPhone: $phone\nDescription: $description';
  }
}

final List<ServiceProvider> providers = [
  ServiceProvider(
    name: 'Ali Hussainy',
    profession: 'Plumber',
    description: 'Pro Plumber.',
    phone: '+961-81604512',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'Ali Salloum.',
    profession: 'Plumber',
    description: 'Best plumber in Jnoub.',
    phone: '+961-76684522',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'Hussein Sabra',
    profession: 'Electrician',
    description: 'PRO Electrician.',
    phone: '+961-03904855',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'Awada Electrical.',
    profession: 'Electrician',
    description: 'Best electrical company.',
    phone: '0733445566',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'Hassan Salloum',
    profession: 'Carpenter',
    description: 'Pro Carpenter.',
    phone: '+961-70836412',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'Awarka Carpenter Company.',
    profession: 'Carpenter',
    description: 'carpentry company.',
    phone: '+961-76960306',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'Alaa Khansa',
    profession: 'Plumber',
    description: 'Pro Plumber.',
    phone: '+961-76967835',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'Electrician company',
    profession: 'Electrician',
    description: 'Electrical repair services.',
    phone: '+961-01886334',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'Aya Hmede',
    profession: 'Carpenter',
    description: 'Professional Carpenter.',
    phone: '+961-71631212',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'Carpenter Company.',
    profession: 'Carpenter',
    description: 'Experts in carpentry.',
    phone: '+961-01778669',
    isIndividual: false,
  ),
];
