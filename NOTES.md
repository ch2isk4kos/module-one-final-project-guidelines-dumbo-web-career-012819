USER   --<-    	REVIEW      ->--   WINES
* name          * content		   * name
                * rating		   * type
                * user_id		   * year
                * wine_id          * origin
                                   * color

- USER:

    def change
        create_table :users do |t|
            t.string :name
        end
    end

- REVIEW:

    def change
        create_table :reviews do |t|
            t.string :rating
            t.string :content
            t.integer :user_id
            t.integer :wine_id

            t.timestamps
        end
    end

- WINE:

    def change
        create_table :wines do |t|
            t.string :name
            t.integer :year
            t.string :origin
            t.color :color
        end
    end
