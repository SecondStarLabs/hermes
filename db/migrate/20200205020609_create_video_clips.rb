class CreateVideoClips < ActiveRecord::Migration[6.0]
  def change
    create_table :video_clips do |t|

      t.timestamps
    end
  end
end
