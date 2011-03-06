User.delete_all
Role.delete_all

Role.create(:role_name => "admin")
Role.create(:role_name => "member")

User.create(:login=>"admin", :password=>"admin", :password_confirmation=>"admin", :role_id => Role.find_by_role_name("admin").id, :name_first=>"admin", :name_last=>"admin", :email=>"admin@ad.min")
User.create(:login=>"member", :password=>"member", :password_confirmation=>"member", :role_id => Role.find_by_role_name("member").id, :name_first=>"member", :name_last=>"member", :email=>"member@mem.ber")
