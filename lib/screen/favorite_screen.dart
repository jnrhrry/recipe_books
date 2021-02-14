part of 'screens.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/star.png')
              )
            ),
          ),
          SizedBox(height: 24,),
          Text(
            'Favorite Screen will \n be available soon!',
          style: shared.blackTextFont,)
        ],
      ),
    );
  }
}