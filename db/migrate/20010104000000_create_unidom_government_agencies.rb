class CreateUnidomGovernmentAgencies < ActiveRecord::Migration

  def change

    create_table :unidom_government_agencies, id: :uuid do |t|

      t.references :supervision_region, type: :uuid, null: false,
        polymorphic: { null: false, default: '', limit: 200 }

      t.string :name, null: false, default: '', limit: 200

      t.column :function_code, 'char(4)', null: false, default: 'ZZZZ'

      t.text :description

      t.string   :slug,             null: false, default: nil, limit: 200
      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: ::Time.utc(1970)
      t.datetime :closed_at,        null: false, default: ::Time.utc(3000)
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_government_agencies, :supervision_region_id
    add_index :unidom_government_agencies, :slug, unique: true

  end

end
