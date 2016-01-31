require 'test_helper'

class SecretTest < ActiveSupport::TestCase
  
  def setup
    @secret = Secret.new(image: "example.png", text: "Text 1")
  end

  test "should be valid" do
    assert @secret.valid?
  end

  test "image should be present" do
    @secret.image = "     "
    assert_not @secret.valid?
  end

  test "text should be present" do
    @secret.text = "     "
    assert_not @secret.valid?
  end

  test "image name should not be too long" do
  	@secret.image = "a" * 51;
  	assert_not @secret.valid?
  end

  test "text should not be too long" do
  	@secret.text = "a" * 1001;
  	assert_not @secret.valid?
  end

  test "image name validation should accept valid image file names" do
    valid_images = %w[ex1.jpg ex1.jpeg ex2.png ex3.gif ex4.tiff]
    valid_images.each do |valid_image|
      @secret.image = valid_image
      assert @secret.valid?, "#{valid_image.inspect} should be valid"
    end
  end

  test "image name validation should reject invalid image file names" do
    invalid_images = %w[ex1,jpg ex1:jpeg ex2_png ex3gif ex4+tiff]
    invalid_images.each do |invalid_image|
      @secret.image = invalid_image
      assert_not @secret.valid?, "#{invalid_image.inspect} should be invalid"
    end
  end
end
