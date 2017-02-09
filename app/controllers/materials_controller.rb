class MaterialsController < AdminController
  layout 'admin'
  
  def index
  	@materials = Material.all
  end

  def new
  	@material = Material.new
  end

  def create
  	 @material = Material.new(material_params)
      
      if @material.save
         redirect_to root_path, notice: "O arquivo #{@material.name} foi publicado."
      else
         render "new"
      end
  end

  def destroy
	  @material = Material.find(params[:id])
	  @material.destroy
	  redirect_to root_path, notice:  "O arquivo #{@material.name} foi deletado."
  end

  private
     def material_params
     params.require(:material).permit(:name, :attachment)
   end
end
