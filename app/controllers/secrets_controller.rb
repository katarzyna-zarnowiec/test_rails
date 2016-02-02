class SecretsController < ApplicationController
  
  # add new secret
  def new
  	@secret = Secret.new
  end

  # create new secret
  def create
  	@secret = Secret.new(secret_params)
  	if @secret.save
  		flash[:success] = "New secret successfully added!"
  		# render 'index'
      redirect_to @secret
  	else
  		render 'new'
  	end
  end

  def show
  	@secret = Secret.find(params[:id])
  end

  def edit
    @secret = Secret.find(params[:id])
  end

  def index
  	@secrets = Secret.all
  end

  def destroy
    Secret.find(params[:id]).destroy
    flash[:success] = "Secret was succesfully deleted!"
    redirect_to secrets_path
  end

  private

    def secret_params
      params.require(:secret).permit(:image, :text)
    end
end
