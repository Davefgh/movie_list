import 'package:movie_list/models/movies.dart';

final List<Movie> movies = [
  Movie(
    id: 1,
    image: 'assets/spiderman.webp',
    title: 'Spiderman ( No Way Home )',
    description:
        'Peter Parker faces the consequences of his secret identity being exposed, leading him to seek help from Doctor Strange. A spell gone wrong brings villains from other universes into his world, forcing Spider-Man to team up with unexpected allies. This thrilling, multiverse-spanning adventure combines action, humor, and heartfelt moments.',
    director: "Christian Dave Sayson",
    releasedDate: DateTime.now(),
  ),
  Movie(
    id: 2,
    image: 'assets/avengersInfinityWar.webp',
    title: 'Avengers Infinity War',
    description:
        'The Avengers and their allies must come together to stop the powerful Thanos from collecting all six Infinity Stones and using them to wipe out half of the universe. Packed with epic battles',
    director: "Elgin Karl Lastimoso",
    releasedDate: DateTime.now(),
  ),
  Movie(
    id: 3,
    image: 'assets/hulk.webp',
    title: 'The Hulk',
    description:
        'Dr. Bruce Banner is exposed to a gamma radiation experiment gone wrong, transforming him into the powerful green Hulk whenever anger takes over. Struggling to control his rage and protect those he loves, he battles both inner demons and dangerous enemies in a thrilling mix of action, science, and heroism.',
    director: "Harry Bitoon",
    releasedDate: DateTime.now(),
  ),
  Movie(
    id: 4,
    image: 'assets/doctorStrange.webp',
    title: 'Doctor Strange',
    description:
        'After a car accident ruins his hands, brilliant neurosurgeon Stephen Strange seeks healing and discovers the mystic arts. Trained by the Ancient One, he becomes a powerful sorcerer tasked with protecting reality from dark magical threats, blending mind-bending magic, action, and epic visual adventure.',
    director: "Uzziah Fransico",
    releasedDate: DateTime.now(),
  ),
];
