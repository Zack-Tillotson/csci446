atom_feed do |feed|
	feed.title "Whoe bought #{@product.title}"
	feed.updated @orders.first.created_at

	for order in @orders
		feed.entry(order) do |entry|
			entry.title "Order #{order.id}"
			entry.summary :type => 'xhtml' do |xhtml|
				xhtml.p "Shipped to #{order.address}"

				xhtml.table do
					xhtml.tr do
						xhtml.th 'Product'
						xhtml.th 'Quantity'
						xhtml.th 'Total Price'
					end
				end

				xhtml.p "Paid by #{order.pay_type}"
			end
			entry.author do |author|
				entry.name order.name
				entry.email order.email
			end
		end
	end
and
