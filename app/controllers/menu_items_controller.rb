class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :edit, :update, :destroy]

  # GET /menu_items
  # GET /menu_items.json
  def index
    @menu_items = MenuItem.all
    @current_menu_id = Menu.find_by(active: true).id
    @current_menu_id = params[:current_menu_id] if params[:current_menu_id]
  end

  # GET /menu_items/1
  # GET /menu_items/1.json
  def show
  end

  # GET /menu_items/new
  def new
    @menu_item = MenuItem.new
    @current_menu_id = params[:current_menu_id] if params[:current_menu_id]
  end

  # GET /menu_items/1/edit
  def edit
  end

  # POST /menu_items
  # POST /menu_items.json
  def create
    MenuItem.create!(
      menu_id: params[:menu_id],
      menu_item_name: params[:menu_item_name],
      menu_item_price: params[:menu_item_price],
      stock: params[:stock],
    )
    redirect_to menu_items_path
  end

  # PATCH/PUT /menu_items/1
  # PATCH/PUT /menu_items/1.json
  def update
    respond_to do |format|
      if @menu_item.update(menu_item_params)
        format.html { redirect_to @menu_item, notice: "Menu item was successfully updated." }
        format.json { render :show, status: :ok, location: @menu_item }
      else
        format.html { render :edit }
        format.json { render json: @menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_items/1
  # DELETE /menu_items/1.json
  def destroy
    @menu_item.destroy
    respond_to do |format|
      format.html { redirect_to menu_items_url, notice: "Menu item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def menu_item_params
    params.require(:menu_item).permit(:menu_id, :menu_item_name, :menu_item_price, :stock)
  end
end
