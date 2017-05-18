class CreateUnidomPeople < ActiveRecord::Migration

  def change

    create_table :unidom_people, id: :uuid do |t|

      t.string :name, null: false, default: '', limit: 200
      t.text   :description

      t.string   :slug,             null: false, default: nil, limit: 200
      t.column   :state, 'char(1)', null: false, default: Unidom::Common::STATE
      t.datetime :opened_at,        null: false, default: Unidom::Common::OPENED_AT
      t.datetime :closed_at,        null: false, default: Unidom::Common::CLOSED_AT
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_people, :name
    add_index :unidom_people, :slug, unique: true
    # add_index :unidom_people, :notation, using: 'gin ((notation -> 'tags'))'

  end

end
