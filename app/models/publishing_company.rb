class PublishingCompany < ActiveHash::Base
  
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '講談社' },
    { id: 2, name: '集英社' },
    { id: 3, name: 'KADOKAWA' },
    { id: 4, name: '小学館' },
    { id: 5, name: 'ゼンリン' },
    { id: 6, name: '日経BP' },
    { id: 7, name: '学研HD' },
    { id: 8, name: 'ベネッセHD' },
    { id: 9, name: '文藝春秋' },
    { id: 10, name: 'サイネックス' },
    { id: 11, name: 'インプレスHD' },
    { id: 12, name: 'ダイヤモンド社' },
    { id: 13, name: '文溪堂' },
    { id: 14, name: 'キャリアデザインセンター' },
    { id: 15, name: '東洋経済新報社' },
    { id: 16, name: '朝日新聞出版' },
    { id: 17, name: 'ぱど' },
    { id: 18, name: '昭文社HD' },
    { id: 19, name: 'SEHD・アンド・インキュベー' },
    { id: 20, name: 'アルファポリス' },
    { id: 21, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :books

end