# app/helpers/bootstrap_carousel_helper.rb
# Helper for bootstrap carousel created according to the tutorial:
# http://www.toptal.com/ruby-on-rails/rails-helper-bootstrap-carousel

module BootstrapCarouselHelper

	# return the complete carousel markup for the given image URLs
	def carousel_for(img)
		Carousel.new(self, img).html
	end

	class Carousel

		def initialize(view, img)
			@view = view
			@img = img
			@uid = SecureRandom.hex(6)
		end
		
		# returns the fully rendered markup
		def html
			content = safe_join([indicators, slides, controls])
			content_tag(:div, content, id: uid, class: 'carousel slide')
		end

		private

		attr_accessor :view, :img, :uid
		delegate :link_to, :content_tag, :image_tag, :safe_join, to: :view

		def indicators
			items = img.count.times.map {|idx| indicator_tag(idx)}
			content_tag(:ol, safe_join(items), class: 'carousel-indicators')
		end

		def indicator_tag(idx)
			options = {
				class: (idx.zero? ? 'active' : ''),
				data: {
					target: uid,
					slide_to: idx
				}
			}

			content_tag(:li, '', options)
		end

		def slides
			items = img.map.with_index {|image, idx| slide_tag(image, idx.zero?) }
			content_tag(:div, safe_join(items), class: 'carousel-inner')
		end

		def slide_tag(img, is_active)
			options = {
				class: (is_active ? 'item active' : 'item')
			}

			content_tag(:div, image_tag(img), options)
		end


		def controls
			safe_join([control_tag('left'), control_tag('right')])
		end

		def control_tag(direction)
			options = {
				class: "#{direction} carousel-control",
				data: { slide: direction == 'left' ? 'prev' : 'next'}
			}

			icon = content_tag(:i, '', class: "glyphicon glyphicon-chevron-#{direction}")
			control = link_to(icon, "##{uid}", options)
		end


	end
end