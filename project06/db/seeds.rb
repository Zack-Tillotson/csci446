User.delete_all
Role.delete_all

Role.create(:role_name => "admin")
Role.create(:role_name => "member")

User.create(:login=>"administrator", :password=>"password", :password_confirmation=>"password", :role_id => Role.find_by_role_name("admin").id, :name_first=>"admin", :name_last=>"admin", :email=>"admin@ad.min")
User.create(:login=>"member", :password=>"password", :password_confirmation=>"password", :role_id => Role.find_by_role_name("member").id, :name_first=>"member", :name_last=>"member", :email=>"member@mem.ber")
