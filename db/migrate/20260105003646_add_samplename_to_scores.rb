class AddSamplenameToScores < ActiveRecord::Migration[8.0]
  def change
    add_column :scores, :samplename, :string
  end
end
