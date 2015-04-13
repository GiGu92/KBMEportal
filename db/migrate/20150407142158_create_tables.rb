class CreateTables < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_hash
      t.string :password_salt
      t.string :neptun
      t.string :email
      t.integer :year
      t.string :training_code
      t.boolean :is_reviewer
    end

    create_table :groups do |t|
      t.string :name
    end

    create_table :users_in_groups, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :group, index: true
      t.string :rank
    end

    create_table :user_group_relations do |t|
      t.belongs_to :user, index: true
      t.belongs_to :group, index: true
      t.string :rank
    end

    create_table :tenders do |t|
      t.belongs_to :user, index: true
      t.string :activity_outline
      t.timestamps null: false
    end

    create_table :tender_ratings, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tender, index: true
      t.integer :rating
    end

    create_table :reports do |t|
      t.belongs_to :tender, index: true
      t.belongs_to :group, index: true
      t.string :state
      t.text :text
      t.timestamps null: false
    end

    create_table :comments do |t|
      t.belongs_to :report, index: true
      t.belongs_to :user, index: true
      t.text :text
      t.timestamps null: false
    end

  end
end
