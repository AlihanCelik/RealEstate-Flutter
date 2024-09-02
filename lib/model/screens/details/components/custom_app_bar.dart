import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size=MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
          left: appPadding*0.42,
          right:appPadding*0.42,
          top:appPadding
      ),
      child: Container(
        height: size.height* 0.1,
        child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(Icons.arrow_back_rounded,color: Colors.black,),
                ),
                ),

                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border:Border.all(color: Colors.black.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(Icons.favorite_border_rounded,color: Colors.black,),
                )

              ],
            ),



      ),
    );
  }

}