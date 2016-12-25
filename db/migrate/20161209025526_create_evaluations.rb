class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.date :date
      t.time :time
      t.text :event
      t.text :name
      t.text :team
      t.text :parent
      t.text :email
      t.text :bodypart
      t.boolean :left
      t.boolean :right
      t.text :subjective
      t.text :visual
      t.text :palpation
      t.text :rom
      t.text :mmt
      t.text :neurological
      t.text :specialtests
      t.text :functionaltesting
      t.text :assessment
      t.text :plan
      t.boolean :rice
      t.boolean :taping
      t.boolean :mdreferral
      t.boolean :crutches
      t.boolean :instruction
      t.boolean :screen
      t.boolean :erreferral
      t.text :hospitalname
      t.boolean :notifiedparent
      t.text :whomnotified
      t.timestamp :datetime

      t.timestamps
    end
  end
end
