class Icones {
  static String _icon({required String nomeIcone}) {
    return 'assets/icons/svg/$nomeIcone.svg';
  }

  static String _iconsPNG({required String nomeIcone}) {
    return 'assets/icons/png/$nomeIcone.png';
  }

  static String get odonto => _icon(nomeIcone: 'log-odonto-2');
}
