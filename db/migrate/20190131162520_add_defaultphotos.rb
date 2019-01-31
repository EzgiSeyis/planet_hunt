class AddDefaultphotos < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :photo, :string, default: "image/upload/v1548951623/sgz5iv7xvipc3aes1gfs.png"
    change_column :planets, :photo, :string, default: "image/upload/v1548952262/w24onczvetfhu652ta3t.jpg"
  end
end
