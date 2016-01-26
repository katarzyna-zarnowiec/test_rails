# class for returning image urls for banner carousel
# created with help of BootstrapCarouselHelper
class Banner

	# return urls of all images found in given folder
	def img_urls(search_dir="/")
		urls = Array.new()
		path = "app/assets/images/"
		urls = Dir[path + search_dir + "*.jpg"].map{ |file| file.sub!( path, "")}
		return urls
	end

end