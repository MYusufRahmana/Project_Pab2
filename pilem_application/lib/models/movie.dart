class Movie {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final String releaseDate;
  final double voteAverage;
  Movie({required this.id,
          required this.title,
          required this.overview,
          required this.posterPath,
          required this.backdropPath,
          required this.releaseDate,
          required this.voteAverage});
          factory Movie.fromJson(Map<String, dynamic> json) {
  return Movie (
    id: json['id'] as int, // Tambahkan `as int` untuk memastikan bahwa nilai yang diambil dari JSON adalah integer
    title: json['title'] as String,
    overview: json['overview'] as String, // Tambahkan `as String` untuk memastikan bahwa nilai yang diambil dari JSON adalah string
    posterPath: json['poster_path'] as String,
    backdropPath: json['backdrop_path'] as String, // Tambahkan `as String` untuk memastikan bahwa nilai yang diambil dari JSON adalah string
    releaseDate: json['release_date'] as String, // Ubah 'release_Date' menjadi 'release_date', pastikan nama properti sesuai dengan yang ada dalam JSON
    voteAverage: (json['vote_average'] as num).toDouble(), // Tambahkan 'as num' untuk memastikan bahwa nilai yang diambil dari JSON adalah numerik
  );
}

  
}