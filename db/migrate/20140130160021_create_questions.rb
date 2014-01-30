class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :subtext
      t.boolean :required
      t.references :questionnaire, index: true

      t.timestamps
    end
  end
end
