require 'test_helper'

class SecretsIndexTest < ActionDispatch::IntegrationTest
  
  def setup
  	@secret = secrets(:secret1)
  end

  test "index of secrets properly displayed" do 
  	get secrets_path
  	assert_template 'secrets/index'
  	assert_select 'img.primary'
  	assert_select 'h1#motto'
  	assert_select 'p.italic'

  	Secret.all.each do |secret|
  		assert_select 'a[href=?]', secret_path(secret)
  		assert_select 'img', :src => '/' + secret.image.slice(0..(secret.image.index('.')-1)) + '/'
			assert_select 'div.caption', text: secret.text
  	end
  end

end
