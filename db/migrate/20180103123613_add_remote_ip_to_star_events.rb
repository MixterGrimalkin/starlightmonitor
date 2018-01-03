class AddRemoteIpToStarEvents < ActiveRecord::Migration[5.1]

  def up
    add_column :star_events, :remote_ip, :text
  end

  def down
    remove_column :star_events, :remote_ip
  end
end
