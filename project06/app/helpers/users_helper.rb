module UsersHelper
  def get_total_game_count(id)
    list = Game.find_all_by_user_id(id)
    if(list != nil)
      list.length
    else
      0
    end
  end
end
