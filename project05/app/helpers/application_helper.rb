# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def get_subtitle()
    @subtitles = ["My cousin works at bit.ly", "what's article in spanish anyways?", "not just for spain", "with a name .com hipsters love"]
    @subtitles[rand(@subtitles.length)]
  end
end
