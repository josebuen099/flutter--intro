enum FromWho {mio, others}

class Messaje {
  final String mensaje;
  final String? imageUrl;
  final  FromWho dequien;

  Messaje({
    required this.mensaje,
     this.imageUrl, 
    required this.dequien});
}