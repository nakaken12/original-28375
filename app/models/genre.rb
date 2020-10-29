class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アニメ' },
    { id: 3, name: 'アクション' },
    { id: 4, name: 'アドベンチャー' },
    { id: 5, name: 'SF' },
    { id: 6, name: 'キッズ・ファミリー' },
    { id: 7, name: 'コメディ' },
    { id: 8, name: 'サスペンス' },
    { id: 9, name: '時代劇' },
    { id: 10, name: '青春' },
    { id: 11, name: '戦争' },
    { id: 12, name: 'ドキュメンタリー' },
    { id: 13, name: 'ドラマ' },
    { id: 14, name: 'ファンタジー' },
    { id: 15, name: 'ホラー' },
    { id: 16, name: 'ミュージカル・音楽' },
    { id: 17, name: '恋愛' }
  ]
end
