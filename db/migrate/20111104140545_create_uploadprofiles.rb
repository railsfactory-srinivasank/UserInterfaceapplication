class CreateUploadprofiles < ActiveRecord::Migration
  def self.up
    create_table :uploadprofiles do |t|
      t.string:name
       t.string:photo_file_name # Original filename
      t.string:photo_content_type # Mime type
      t.integer:photo_file_size # File size in bytes
        t.timestamp  :created_at
    end
  end

  def self.down
    drop_table :uploadprofiles
  end
end
