class CreateWines < ActiveRecord::Migration[5.0]
    def change
        create_table :wines do |t|
            t.string :name
            t.string :kind
            t.integer :year
            t.string :origin
            t.string :color
        end
    end
end
