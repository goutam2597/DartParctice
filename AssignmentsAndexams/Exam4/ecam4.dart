class Media {
  void play() {
    print('Playing Media...');
  }
}

class Song extends Media {
  String artist;

  Song(this.artist);

  @override
  void play() {
    print('Playing Song By $artist...');
  }
}

void main() {
  Media media = Media();
  Song song = Song('Goutam Sharma');

  media.play();
  song.play();
}
