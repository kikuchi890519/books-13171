class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|

      t.string     :title,                   null: false, default: ""
      t.string     :author,                  null: false
      t.integer    :category_id,             null: false
      t.integer    :publishing_company_id,   null: false
      t.text       :summary,                 null: false
      t.text       :output,                  null: false
      t.references :user,                    foreign_key:true

      t.timestamps
    end
  end
end
