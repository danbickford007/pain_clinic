class UserPermissionsController < ApplicationController
  before_action :set_user_permission, only: [:show, :edit, :update, :destroy]

  # GET /user_permissions
  # GET /user_permissions.json
  def index
    @user_permissions = UserPermission.all.order(user_id: :asc)

  end

  # GET /user_permissions/1
  # GET /user_permissions/1.json
  def show
  end

  # GET /user_permissions/new
  def new
    @user_permission = UserPermission.new
  end

  # GET /user_permissions/1/edit
  def edit
  end

  # POST /user_permissions
  # POST /user_permissions.json
  def create
    @user_permission = UserPermission.new(user_permission_params)
    @user_permission.user_id = current_user.id
    respond_to do |format|
      if @user_permission.save
        format.html { redirect_to @user_permission, notice: 'User permission was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_permission }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_permissions/1
  # PATCH/PUT /user_permissions/1.json
  def update
    respond_to do |format|
      if @user_permission.update(user_permission_params)
        format.html { redirect_to @user_permission, notice: 'User permission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_permissions/1
  # DELETE /user_permissions/1.json
  def destroy
    @user_permission.destroy
    respond_to do |format|
      format.html { redirect_to user_permissions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_permission
      @user_permission = UserPermission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_permission_params
      params.require(:user_permission).permit(:description, :user_id)
    end
end
