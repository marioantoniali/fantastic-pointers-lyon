class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :destinataire

      t.timestamps
    end
  end
end
