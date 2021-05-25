class Book < ApplicationRecord

    belongs_to :user
    has_one    :orders
    has_one_attached :image
  
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :publishing_company
    belongs_to :category
  
    with_options presence: true do
    validates :title
    validates :author
    validates :summary
    validates :image
  end
  
  validates :publishing_company_id, numericality: { other_than: 0 }
  validates :category_id, numericality: { other_than: 0 }
  
end
