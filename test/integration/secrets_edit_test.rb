require 'test_helper'

class SecretsEditTest < ActionDispatch::IntegrationTest
  
  def setup
  	@secret = secrets(:secret1)
  end

  test "unsuccesful edit of secret" do
	 	get edit_secret_path(@secret)
	 	assert_template 'secrets/edit'
	 	patch secret_path(@secret), secret: {image: "",
	 																		  text: "a"*2000}
 		assert_template 'secrets/edit'																 
	end

end
