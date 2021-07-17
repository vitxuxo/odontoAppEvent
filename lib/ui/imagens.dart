class Imagens {
  static String _imagesPNG({required String nomeImage}) {
    return 'assets/images/png/$nomeImage.png';
  }

  static String _images({required String nomeImage}) {
    return 'assets/images/svg/$nomeImage.svg';
  }

  static String get foto1 => _images(nomeImage: 'FESTIVAL_ALTA_RESOL_');
  static String get foto2 => _images(nomeImage: 'odonto');
  static String get foto1Png => _imagesPNG(nomeImage: 'FESTIVAL_ALTA_RESOL_');
  static String get foto2Png => _imagesPNG(nomeImage: 'odonto');
}
