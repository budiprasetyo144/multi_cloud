

class AdvancedTile {
  final String title;
  final List<AdvancedTile> tiles;
  bool isExpanded;

  AdvancedTile({
    required this.title,
    this.tiles = const [],
    this.isExpanded = false,
  });
}



//=====================================================


final advancedTiles = <AdvancedTile>[
  AdvancedTile(
    title: 'Countries',
    tiles: [
      AdvancedTile(title: 'Russia'),
      AdvancedTile(title: 'Canada'),
      AdvancedTile(title: 'USA'),
      AdvancedTile(title: 'China'),
      AdvancedTile(title: 'China'),
      AdvancedTile(title: 'Australia'),
      AdvancedTile(title: 'Argentina'),
    ],
  ),
  AdvancedTile(
    title: 'Dates',
    tiles: [
      AdvancedTile(title: '2020'),
      AdvancedTile(title: '2021'),
      AdvancedTile(title: '2022'),
      AdvancedTile(title: '2023'),
    ],
  ),
  AdvancedTile(
    title: 'Animals',
    tiles: [
      AdvancedTile(title: 'Cat'),
      AdvancedTile(title: 'Dog'),
      AdvancedTile(title: 'Lion'),
      AdvancedTile(title: 'Elephant'),
      AdvancedTile(title: 'Giraffe'),
    ],
  ),
  AdvancedTile(
    title: 'DDDD',
    tiles: [
      AdvancedTile(title: 'Cat'),
      AdvancedTile(title: 'Dog'),
      AdvancedTile(title: 'Lion'),
      AdvancedTile(title: 'Elephant'),
      AdvancedTile(title: 'Giraffe'),
    ],
  ),
];
