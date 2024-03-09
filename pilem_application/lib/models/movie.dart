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
    id: json['id'] ?? 0, // Tambahkan `as int` untuk memastikan bahwa nilai yang diambil dari JSON adalah integer
    title: json['title'] ?? '',
    overview: json['overview'] ?? '', // Tambahkan `as String` untuk memastikan bahwa nilai yang diambil dari JSON adalah string
    posterPath: json['poster_path'] ?? '',
    backdropPath: json['backdrop_path'] ?? '' , // Tambahkan `as String` untuk memastikan bahwa nilai yang diambil dari JSON adalah string
    releaseDate: json['release_date'] ?? '', // Ubah 'release_Date' menjadi 'release_date', pastikan nama properti sesuai dengan yang ada dalam JSON
    voteAverage: json['vote_average'] ?? '0.0' as double, // Tambahkan 'as num' untuk memastikan bahwa nilai yang diambil dari JSON adalah numerik
  );
}
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'overview': overview,
      'poster_path': posterPath,
      'backdrop_path': backdropPath,
      'release_date': releaseDate,
      'vote_average': voteAverage,
    };
  }
}