
class Articulos {
  final String idArticulo;
  final String detalle;
  final String marca;
  final String medida;
  final String cantBodega;
  final String foto;

  Articulos(
      {required this.idArticulo,
      required this.detalle,
      required this.marca,
      required this.medida,
      required this.cantBodega,
      required this.foto});

  factory Articulos.desdeDoc(Map<String, dynamic> data) {
    return Articulos(
        idArticulo: data['id'] ?? '',
        detalle: data['detalle'] ?? '',
        marca: data['marca'] ?? '',
        medida: data['medida'] ?? '',
        cantBodega: data['cantidad'] ?? '',
        foto: data['foto'] ?? '');
  }
}
