import 'package:nike_shop/models/categories.dart';
import 'package:nike_shop/models/shoe_model.dart';

List<Shoe> shoesList = [
  Shoe(
    model: 'Nike air max',
    description:
        'Pierwszy lifestylowy model Nike Air Max — Nike Air Max 270 — zapewnia wygodę oraz odznacza się wyjątkowym charakterem i stylem. Fason wzorowany na legendach linii Air Max wyróżnia się stylową gamą kolorów i dużym okienkiem, które ukazuje największą innowację Nike.',
    price: 230,
    imageUrl: 'assets/shoes/shoe_2.png',
    category: Categories.sneakers,
  ),
  Shoe(
      model: 'Nike Zoom 2K',
      description:
          'Model Nike Zoom 2K inspirowany fasonami z wczesnych lat 2000 przywołuje złotą erę butów do biegania. Klasyczna poduszka gazowa Zoom Air nawiązuje do przeszłości, a gumowe elementy otaczają podeszwę zewnętrzną, dodając nowoczesnych akcentów.',
      price: 80,
      imageUrl: 'assets/shoes/shoe_3.png',
      category: Categories.sneakers),
  Shoe(
      model: 'Nike LunarGlide 6',
      description:
          'LunarGlide 6 to połączenie świetnej amortyzacji i stabilności podczas biegu.',
      price: 90,
      imageUrl: 'assets/shoes/shoe_5.png',
      category: Categories.running)
];
