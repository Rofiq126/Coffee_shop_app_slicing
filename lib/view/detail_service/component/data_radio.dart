enum BarberShopService {
  hotShave,
  shaveOldSchool,
  speacialyShave,
  basicShave,
  beardAndMustacheTrim,
  bearcTrimWithLineUp
}

class ServiceShave {
  String name;
  String price;

  ServiceShave({required this.name, required this.price});
}

List<ServiceShave> dataService = [
  ServiceShave(name: 'Hot Shave', price: '25.00'),
  ServiceShave(name: 'Shave \'Old School\'', price: '30.00'),
  ServiceShave(name: 'Specialy Shave', price: '35.00'),
  ServiceShave(name: 'Basic Shave', price: '10.00'),
  ServiceShave(name: 'Beard & Moustache Trim', price: '25.00'),
  ServiceShave(name: 'Beard Trim with Line up', price: '12.00'),
];
