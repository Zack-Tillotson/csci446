class AddTestData < ActiveRecord::Migration
  def self.up
  	  Product.delete_all
  	  Product.create(:title => 'Super Shiny Space Suit',
  	  	  :description => %{<p>This space suit will surely help you survive the surreal experience of being sent up to space in a slingshot</p>},
  	  	  :image_url => '/images/suit.jpg',
  	  	  :price => 28.50)
  	  Product.create(:title => 'Dull And Dreary Dress',
  	  	  :description => %{<p>Do you delve into dark dwellings for dirty dances? This dress is for you! North Dakota sales tax applies.</p>},
  	  	  :image_url => '/images/dress.jpg',
  	  	  :price => 10.99)
  	  
  	  	  
  end

  def self.down
  	  Product.delete_all
  end
end
