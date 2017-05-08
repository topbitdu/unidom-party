class CreateUnidomCompanies < ActiveRecord::Migration

  def change

    create_table :unidom_companies, id: :uuid do |t|

      t.string :name, null: false, default: '', limit: 200
      t.text   :description

      t.string   :slug,             null: false, default: nil, limit: 200
      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: Unidom::Common::OPENED_AT
      t.datetime :closed_at,        null: false, default: Unidom::Common::CLOSED_AT
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_companies, :name
    add_index :unidom_companies, :slug, unique: true

  end

end
