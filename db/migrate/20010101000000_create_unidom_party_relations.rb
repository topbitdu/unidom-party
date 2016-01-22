class CreateUnidomPartyRelations < ActiveRecord::Migration

  def change

    create_table :unidom_party_relations, id: :uuid do |t|

      t.references :source_party, type: :uuid, null: false,
        polymorphic: { null: false, default: '', limit: 200 }
      t.references :target_party, type: :uuid, null: false,
        polymorphic: { null: false, default: '', limit: 200 }

      t.column :linkage_code, 'char(4)', null: false, default: 'FRND'

      t.integer :priority, null: false, default: 0
      t.integer :grade,    null: false, default: 0
      t.text    :description

      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: ::Time.utc(1970)
      t.datetime :closed_at,        null: false, default: ::Time.utc(3000)
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_party_relations, :source_party_id
    add_index :unidom_party_relations, :target_party_id

  end

end
