import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/Pages/detail_page.dart';
import 'package:poke_dex/Widgets/poke_img_and_ball.dart';
import 'package:poke_dex/constants/constants.dart';
import 'package:poke_dex/constants/ui_helper.dart';
import 'package:poke_dex/model/pokemon_model.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>DetailPage(pokemon: pokemon)));
      },
      child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
      elevation: 3,
      shadowColor:Colors.white,
      color: UIHelper.getColorFromType(pokemon.type![0]),
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pokemon.name ?? 'N/A', style: Constants.getPokemonNameTextStyle(),),
            Chip(label:Text(pokemon.type![0])),
            
            Expanded(child: PokeImageAndBall(pokemon: pokemon))
],
),
      ),

      ),
    );
  }
}
