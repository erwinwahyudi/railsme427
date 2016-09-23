class UserController < ApplicationController
  # get 'user/index', to: 'user#index'

  # get 'user/form_insert', to: 'user#form_insert'
  # post 'user/insert_data' to: 'user#insert_data'

  # get 'user/form_edit/:id', to: 'user#form_edit'
  # patch 'user/edit_data/:id' to: 'user#edit_data'

  # delete 'user/hapus/:id' to: 'user#hapus'

  layout 'adm'

  def index
    @users = User.all
  end

  def form_insert
    @user = User.new
  end

  def insert_data
    @user = User.new

    @user.nama = params[:user][:nama]
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user_save = @user.save

    if @user_save
      redirect_to adm_user_index_path
    else 
      render 'form_insert'
    end
  end

  def hapus
    @id = params[:id]
    @user = User.find(@id.to_i)

    @user_hapus = @user.destroy

    redirect_to adm_user_index_path
  end

end
