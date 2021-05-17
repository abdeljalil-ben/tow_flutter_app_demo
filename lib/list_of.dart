enum PictureType{ Anim , fruits }
class Animal {

  final String imageUrl;
  final PictureType type;
  Animal({
    this.imageUrl,
    this.type,
});
}
final allAnimals=[
  Animal(
    imageUrl:'assets/lion-163542__340.jpg',
    type: PictureType.Anim,
  ),
  Animal(
      imageUrl:'assets/dog-cartoon-4841690_960_720.jpg',
    type: PictureType.Anim,
  ),
  Animal(
      imageUrl:'assets/jumping-278866_960_720.jpg',
    type: PictureType.Anim,
  ),
  Animal(
      imageUrl:'assets/lion-564925_960_720.png',
      type: PictureType.Anim,
  )
];