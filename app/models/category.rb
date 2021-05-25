class Category < ActiveHash::Base
  
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '文学・小説' },
    { id: 2, name: '社会・ビジネス' },
    { id: 3, name: '旅行・地図' },
    { id: 4, name: '趣味' },
    { id: 5, name: '実用・教育' },
    { id: 6, name: 'アート・教養・エンタメ' },
    { id: 7, name: '事典・図鑑・語学・辞書' },
    { id: 8, name: 'こども' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :books
end