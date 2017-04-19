class AdministratorsController < AdminController
  def new
    @administrator = Admin.new
  end

  def create
    @administrator = Admin.new(admin_params)

    if @administrator.save
      redirect_to root_path
      flash[:notice] = 'Administrador Cadastrado com sucesso.'
    else
      flash[:notice] = 'Falha ao cadastrar o administrador.'
      render :action => 'new'
    end
  end

  def destroy
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
