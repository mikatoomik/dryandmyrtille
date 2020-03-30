puts "creating points of sale"

Point.delete_all

Point.create(
  name: 'Village des TALENTS CREATIFS',
  city: 'Puget sur argens',
  address: '146 Boulevard de Bazeille',
  code: '83480',
  longitude: 6.693632,
  latitude: 43.452341,
  tel: '06 67 31 41 35'
)
Point.create(
  name: 'Villa Elisa',
  city: 'Saint-Raphael',
  address: '1750 boulevard de la 36eme division du Texas',
  code: '83700',
  longitude: 6.854599,
  latitude: 43.420033,
  tel: '06 34 18 18 80'
)
Point.create(
  name: 'CARALYS',
  city: 'Nice',
  address: '30 rue Lamartine',
  code: '06000',
  longitude: 7.267908,
  latitude: 43.703857,
  tel: '09 54 83 27 06'
)
Point.create(
  name: '25 52 BE UNIQUE',
  city: 'Nice',
  address: '31 avenue Jean Médecin',
  code: '06000',
  longitude: 7.266477,
  latitude: 43.702881,
  tel: '04 93 82 94 29'
)
Point.create(
  name: 'Les Noces de Manon',
  city: 'La Garde',
  address: '231 avenue Louis Antoine Saint-Just',
  code: '83130',
  longitude: 6.021172,
  latitude: 43.143356,
  tel: '04 94 35 88 15'
)
Point.create(
  name: 'Marie et Vous',
  city: 'Draguignan',
  address: '27 boulevard dela Liberté',
  code: '83300',
  longitude: 6.464174,
  latitude: 43.540367,
  tel: '09 82 40 45 16'
)
Point.create(
  name: 'La Fabrique Aixoise',
  city: 'Aix-en-provence',
  address: '14 rue Laurent Fauchier',
  code: '13100',
  longitude: 5.448235,
  latitude: 43.528732
)

puts "#{Point.count} points of sale created"

puts "creating collections"

Collection.delete_all

Collection.create(
  name: 'Rosa',
  theme: 'Romantique',
  description: 'Des Nuances de rose et de saumon
  pour une collection poétique'
)
Collection.create(
  name: 'Maria',
  theme: 'Provence et Lavande',
  description: 'une collection
aux douces effluves et tout en douceur'
)
Collection.create(
  name: 'Evita',
  theme: 'Wild et naturelle',
  description: 'une collection au caractère trés végétal'
)
Collection.create(
  name: 'Antonia',
  theme: 'Esprit Boheme intemporel',
  description: 'une collection aux tons Rose soutenus et Fauves'
)
Collection.create(
  name: 'Bianca',
  theme: 'Elegante, Raffinée',
  description: 'Une collection au charme classique
  tout en blanc et crême.
Parfaits accessoires pour la mariée ou son cortège'
)
