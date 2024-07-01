
import 'package:flutter/material.dart';

Widget CARD_AREA_INTERESSES({
  required int area_id,
}) {
  Map<String, dynamic> detalhesArea = obter_detalhes_Area(area_id);

  return IntrinsicWidth(
    child: Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: detalhesArea['cor_area'], width: 2),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 3.0, left: 5.0, right: 8, bottom: 3),
                child: Image.asset(
                  detalhesArea['imagem_area'],
                  width: 27,
                  height: 27,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    detalhesArea['nome_area'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: detalhesArea['cor_area'],
                      fontSize: 16.48,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 0.09,
                      letterSpacing: 0.15,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8)
            ],
          ),
        ],
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> obter_detalhes_Area(int areaId) {
  String nomeArea = '';
  Color corArea = Colors.transparent;
  String imagemArea = '';

  switch (areaId) {
    case 1:
      nomeArea = 'Saúde';
      corArea = const Color(0xFF8F3023);
      imagemArea = 'assets/images/fav_saude.png';
      break;
    case 2:
      nomeArea = 'Desporto';
      corArea = const Color(0xFF53981D);
      imagemArea = 'assets/images/fav_desporto.png';
      break;
    case 3:
      nomeArea = 'Gastronomia';
      corArea = const Color(0xFFA91C7A);
      imagemArea = 'assets/images/fav_restaurant.png';
      break;
    case 4:
      nomeArea = 'Formação';
      corArea = const Color(0xFF3779C6);
      imagemArea = 'assets/images/fav_formacao.png';
      break;
    case 5:
      nomeArea = 'Alojamento';
      corArea = const Color(0xFF815520);
      imagemArea = 'assets/images/fav_alojamento.png';
      break;
    case 6:
      nomeArea = 'Transportes';
      corArea = const Color(0xFFB7BB06);
      imagemArea = 'assets/images/fav_transportes.png';
      break;
    case 7:
      nomeArea = 'Lazer';
      corArea = const Color(0xFF25ABAB);
      imagemArea = 'assets/images/fav_lazer.png';
      break;

    default:
      nomeArea = 'Outro';
      corArea = Colors.grey;
      imagemArea = 'assets/images/no_events.png';
      break;
  }

  return {
    'nome_area': nomeArea,
    'cor_area': corArea,
    'imagem_area': imagemArea,
  };
}