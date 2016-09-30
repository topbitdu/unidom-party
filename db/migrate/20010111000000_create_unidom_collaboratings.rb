class CreateUnidomCollaboratings < ActiveRecord::Migration

  def change

    create_table :unidom_collaboratings, id: :uuid do |t|

      t.references :collaboration, type: :uuid, null: false,
        polymorphic: { null: false, default: '', limit: 200 }
      t.references :collaborator,  type: :uuid, null: false,
        polymorphic: { null: false, default: '', limit: 200 }

      t.column :role_code, 'char(4)', null: false, default: 'ZZZZ'

      t.string  :name,     null: false, default: '', limit: 200
      t.integer :priority, null: false, default: 0
      t.integer :grade,    null: false, default: 0

      t.text :description
      t.text :instruction

      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: ::Time.utc(1970)
      t.datetime :closed_at,        null: false, default: ::Time.utc(3000)
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_collaboratings, :collaboration_id
    add_index :unidom_collaboratings, :collaborator_id

  end

end
