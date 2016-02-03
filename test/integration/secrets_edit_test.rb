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

	test "successful edit of secret" do
		get edit_secret_path(@secret)
		assert_template 'secrets/edit'
		new_image = "new_image.jpg"
		new_text = "ABCDEFGH"
		patch secret_path(@secret), secret: {image: new_image,
	 																		  text: new_text}
 		assert_not flash.empty?
 		assert_redirected_to @secret
 		@secret.reload
 		assert_equal new_image, @secret.image
 		assert_equal new_text, @secret.text	
	end

end

78
