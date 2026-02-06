import 'package:flutter/material.dart';
import 'package:movie_list/data/movie_data.dart';

const String movieTitle = "Movixor";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Movie list
  String truncate(String text, int length) {
    if (text.length <= length) return text;
    return '${text.substring(0, length)}...';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          movieTitle,
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(color: Colors.amberAccent, height: 1, thickness: 1),
        ),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return Card(
            color: Colors.black26,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                // Movie Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    movie.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),

                // Title & description + datetime
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        truncate(movie.description, 200),
                        style: TextStyle(color: Colors.white60),
                      ),
                      Text(
                        'Director: ${movie.director}',
                        style: TextStyle(color: Colors.white60),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Date: ${movie.releasedDate.year}-${movie.releasedDate.month.toString().padLeft(2, '0')}-${movie.releasedDate.day.toString().padLeft(2, '0')}',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
