class AddKindColumnToWines < ActiveRecord::Migration[5.0]
    def change
        add_column :wines, :kind, :string
    end
end
