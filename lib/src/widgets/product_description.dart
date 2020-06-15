import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProductDescription extends StatelessWidget {
  
  const ProductDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      height: 300,
      padding: EdgeInsets.all(40),
      decoration: decorationGreyBox(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          // Title and Heart
          Row(
            children: <Widget>[
              Text('Tesla Model 3', style: TextStyle( fontSize: 34, fontWeight: FontWeight.bold )),
              Spacer(),
              Icon( FontAwesomeIcons.heart, color: Colors.red )
            ],
          ),
          // Spacer
          SizedBox( height: 10 ),

          // Subtitle
          Text('Automóvil Eléctrico Sedán - 5 plazas', style: TextStyle( color: Colors.white70 ) ),

          // Spacer
          SizedBox( height: 20 ),

          // Description
          Text('Autonomía de 499 km. Tiene dos motores, uno en cada eje, que le proporcionan tracción total y potencia combinada de 379 kW (515 CV). Velocidad máxima 260 km/h.', style: TextStyle( color: Colors.white70, height: 1.3 )),

          Spacer(),
          // Total and Button
          Row(
            children: <Widget>[
              Text('\$35000', style: TextStyle( fontSize: 20, fontWeight: FontWeight.w500 )),

              Spacer(),

              OutlineButton(
                padding: EdgeInsets.symmetric( vertical: 15, horizontal: 30),
                child: Text('Comprar'),
                shape: StadiumBorder(),
                borderSide: BorderSide(width: 2, color: Colors.white30),
                highlightedBorderColor: Colors.white30,
                onPressed: (){},
              )

            ],
          )

        ],
      ),
    );
  }



  BoxDecoration decorationGreyBox() {
    return BoxDecoration(
        color: Color(0xff262A2D),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
        )
      );
  }

}