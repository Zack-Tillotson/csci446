module RolesHelper
  def get_total_user_count(id)
    list = User.find_all_by_role_id(id)
    if(list != nil)
      list.length
    else
      0
    end
  end
end
