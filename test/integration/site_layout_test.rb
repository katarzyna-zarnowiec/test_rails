require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "header and footer" do
  	get root_path
  	assert_select "header"
  	assert_select "div#footer"
  end

  test "layout links" do
  	get root_path
  	assert_template 'static_pages/home'
  	assert_select "a[href=?]", root_path, count:1
    assert_select "a[href=?]", secrets_path
  end

  test "carousel on home website" do
  	get root_path
  	assert_select "div.carousel"
	end

end
