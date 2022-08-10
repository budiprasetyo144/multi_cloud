

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
    title: 'Non Financial Services',
    tiles: [
      AdvancedTile(title: '- Retail'),
      AdvancedTile(title: '- Consumer packaged goods'),
      AdvancedTile(title: '- Manufacturing'),
      AdvancedTile(title: '- Automotive'),
      AdvancedTile(title: '- Supply chain and logistics'),
      AdvancedTile(title: '- Energy'),
      AdvancedTile(title: '- Healthcare and life sciences'),
      AdvancedTile(title: '- Media and entertainment'),
      AdvancedTile(title: '- Gaming'),
      AdvancedTile(title: '- Telecomunications'),
    ],
  ),
  AdvancedTile(
    title: 'Financial Services',
    tiles: [
      AdvancedTile(title: '- Banking'),
      AdvancedTile(title: '- Multifinance'),
      AdvancedTile(title: '- Fintech'),
      AdvancedTile(title: '- Financial Lending'),
    ],
  ),
  AdvancedTile(
    title: 'Goverment and Public Sector',
    tiles: [
      AdvancedTile(title: '- Goverment'),
      AdvancedTile(title: '- State and Local Goverment'),
      AdvancedTile(title: '- Education'),
      AdvancedTile(title: '- Education technology'),
    ],
  ),
];
