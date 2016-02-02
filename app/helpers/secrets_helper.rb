module SecretsHelper

	def elements_in_order(secrets)
		id = 1
		content_all = ""
		empty_column = content_tag(:div, nil, class: "col-md-2  visible-md visible-lg");

		secrets.each do |secret|
			caption = content_tag(:div, content_tag(:div, secret.text, class: 'caption'), class: 'col-xs-8 col-md-4')
			if (id % 2) == 0
				img = content_tag(:div, link_to( image_tag( secret.image, class: "img-responsive pull-left"), secret_path(secret.id)), class: 'col-xs-4 col-md-4')
	  	content_all =  safe_join([content_all, content_tag(:div, safe_join([empty_column, img, caption, empty_column]), class: "row vcenter alternating")])
			else
				img = content_tag(:div, link_to( image_tag( secret.image, class: "img-responsive pull-right"), secret_path(secret.id)), class: 'col-xs-4 col-md-4')
	  	content_all =  safe_join([content_all, content_tag(:div, safe_join([empty_column, caption, img, empty_column]), class: "row vcenter alternating")])
			end	
	  	id +=1
	  end
	  return content_all
	end
end
