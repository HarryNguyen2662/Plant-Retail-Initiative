//resources

//for introScreen
import 'package:carousel_slider/carousel_controller.dart';
import 'package:ecommerce_app_firebase/models/product_model.dart';
import 'package:flutter/material.dart';

int currentPage = 0;
CarouselController carouselController = CarouselController();
dynamic person;

List viewPage = [
  {
    'Title': 'Order Your Food',
    'image': 'assets/images/stocks/1.png',
    'desc': 'Now you can order food any time right from your mobile.',
  },
  {
    'Title': 'Cooking Safe Food',
    'image': 'assets/images/stocks/2.png',
    'desc': 'We are maintain safety and We keep clean while making food.',
  },
  {
    'Title': 'Quick delivery',
    'image': 'assets/images/stocks/3.png',
    'desc': 'Orders your favourite meals will be immediately deliver',
  },
];

//for signInScreen
final GlobalKey<FormState> SignInKey = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
String? email;
String? password;
bool viewPassword = true;

//for loginScreen
final GlobalKey<FormState> logInKey = GlobalKey<FormState>();
TextEditingController emailControllerLog = TextEditingController();
TextEditingController passwordControllerLog = TextEditingController();
String? logEmail;
String? logPassword;
bool logViewPassword = true;

//for HomePage and Detail Page
List viewCategory = [
  {
    'id': 1,
    'name': 'All',
  },
  {
    'id': 2,
    'name': 'Fiction',
  },
  {
    'id': 3,
    'name': 'Psychology',
  },
  {
    'id': 4,
    'name': 'Finance',
  },
  {
    'id': 5,
    'name': 'Self-Help',
  },
];

List category = [
  {
    'id': 1,
    'name': 'Flower',
    'img': '🌺',
  },
  {
    'id': 2,
    'name': 'Bonsai',
    'img': '🌳',
  },
  {
    'id': 3,
    'name': 'Decoration tree',
    'img': '🌴',
  },
];

List AllProducts = [
  products(
    id: 1,
    name: 'Australian Weeping_Willow Bonsai Tree',
    category: 'Bonsai',
    description: 'Famous ornamental plants in Japanese culture.',
    image: 'assets/images/bonsai/Australian_Weeping_Willow_Bonsai_Tree.png',
    quantity: 1,
    price: 329,
  ),
  products(
    id: 1,
    name: 'Fukien Tea',
    category: 'Bonsai',
    description: 'Famous ornamental plants in Japanese culture.',
    image: 'assets/images/bonsai/Fukien_Tea.png',
    quantity: 1,
    price: 59,
  ),
  products(
    id: 1,
    name: 'Pink blossom',
    category: 'Bonsai',
    description: 'Famous ornamental plants in Japanese culture.',
    image: 'assets/images/bonsai/pink_blossom.png',
    quantity: 1,
    price: 129,
  ),
  products(
    id: 1,
    name: 'Green Mound Juniper',
    category: 'Bonsai',
    description: 'Famous ornamental plants in Japanese culture.',
    image: 'assets/images/bonsai/Green_Mound_Juniper.png',
    quantity: 1,
    price: 459,
  ),
  products(
    id: 2,
    name: 'Yellow apricot flowers',
    category: 'Flower',
    description: 'Perfect decorative accessory for your home.',
    image: 'assets/images/hoa/yellow_apricot_flowers.png',
    quantity: 1,
    price: 659,
  ),
  products(
    id: 2,
    name: 'Lycoris Radiata',
    category: 'Flower',
    description: 'Perfect decorative accessory for your home.',
    image: 'assets/images/hoa/Lycoris_radiata.png',
    quantity: 1,
    price: 259,
  ),
  products(
    id: 2,
    name: 'Orchids Flowers',
    category: 'Flower',
    description: 'Perfect decorative accessory for your home.',
    image: 'assets/images/hoa/Orchids_Flowers.png',
    quantity: 1,
    price: 69,
  ),
  products(
    id: 2,
    name: 'Orchids',
    category: 'Flower',
    description: 'Perfect decorative accessory for your home.',
    image: 'assets/images/hoa/orchids.png',
    quantity: 1,
    price: 699,
  ),
  products(
    id: 2,
    name: 'Phalaenopsis Orchids Floral',
    category: 'Flower',
    description: 'Perfect decorative accessory for your home.',
    image: 'assets/images/hoa/Phalaenopsis_Orchids_Floral.png',
    quantity: 1,
    price: 269,
  ),
  products(
    id: 2,
    name: 'Purple Orchids',
    category: 'Flower',
    description: 'Perfect decorative accessory for your home.',
    image: 'assets/images/hoa/Purple_Orchids.png',
    quantity: 1,
    price: 69,
  ),
  products(
    id: 2,
    name: 'Silk Flower',
    category: 'Flower',
    description: 'Perfect decorative accessory for your home.',
    image: 'assets/images/hoa/Silk_Flower.png',
    quantity: 1,
    price: 29,
  ),
  products(
    id: 2,
    name: 'Sunflowers',
    category: 'Flower',
    description: 'Perfect decorative accessory for your home.',
    image: 'assets/images/hoa/Sunflowers.png',
    quantity: 1,
    price: 369,
  ),
  products(
    id: 2,
    name: 'Tulip',
    category: 'Flower',
    description: 'Perfect decorative accessory for your home.',
    image: 'assets/images/hoa/Tulip.png',
    quantity: 1,
    price: 569,
  ),
  products(
    id: 3,
    name: 'Agave',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/Agave.png',
    quantity: 1,
    price: 69,
  ),
  products(
    id: 3,
    name: 'Artificial Aloe',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/Artificial_Aloe.png',
    quantity: 1,
    price: 99,
  ),
  products(
    id: 3,
    name: 'Cactus',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/Cactus.png',
    quantity: 1,
    price: 999,
  ),
  products(
    id: 3,
    name: 'Lilies Arrangement',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/Lilies_Arrangement.png',
    quantity: 1,
    price: 369,
  ),
  products(
    id: 3,
    name: 'Palm Tree',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/Palm_Tree.png',
    quantity: 1,
    price: 69,
  ),
  products(
    id: 3,
    name: 'Pink Princess Philodendron',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/Pink_Princess_Philodendron.png',
    quantity: 1,
    price: 859,
  ),
  products(
    id: 3,
    name: 'Red Orchid Lucky_Bamboo',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/Red_Orchid_Lucky_Bamboo.png',
    quantity: 1,
    price: 19,
  ),
  products(
    id: 3,
    name: 'Rozwkeo',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/Rozwkeo.png',
    quantity: 1,
    price: 99,
  ),
  products(
    id: 3,
    name: 'Tree Bird_of Paradise',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/Tree_Bird_of_Paradise.png',
    quantity: 1,
    price: 159,
  ),
  products(
    id: 3,
    name: 'White blossom tree',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/White_blossom_tree.png',
    quantity: 1,
    price: 789,
  ),
  products(
    id: 3,
    name: 'Yucca',
    category: 'Decoration tree',
    description: 'This Book is a good book to read with it.',
    image: 'assets/images/caycoi/Yucca.png',
    quantity: 1,
    price: 79,
  ),
];
