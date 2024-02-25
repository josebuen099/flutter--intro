enum FromWho {mine, hers}

class Messaje {
  final String mensaje;
  final String? imageUrl;
  final  FromWho dequien;

  Messaje({
    required this.mensaje,
     this.imageUrl, 
    required this.dequien});
}