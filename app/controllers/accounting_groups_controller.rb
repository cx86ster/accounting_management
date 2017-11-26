class AccountingGroupsController < ApplicationController
  before_action :set_accounting_group, only: [:show, :edit, :update, :destroy]

  # GET /accounting_groups
  # GET /accounting_groups.json
  def index
    @accounting_groups = AccountingGroup.all
  end

  # GET /accounting_groups/1
  # GET /accounting_groups/1.json
  def show
  end

  # GET /accounting_groups/new
  def new
    @accounting_group = AccountingGroup.new
  end

  # GET /accounting_groups/1/edit
  def edit
  end

  # POST /accounting_groups
  # POST /accounting_groups.json
  def create
    @accounting_group = AccountingGroup.new(accounting_group_params)

    respond_to do |format|
      if @accounting_group.save
        format.html { redirect_to @accounting_group, notice: 'Accounting group was successfully created.' }
        format.json { render :show, status: :created, location: @accounting_group }
      else
        format.html { render :new }
        format.json { render json: @accounting_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounting_groups/1
  # PATCH/PUT /accounting_groups/1.json
  def update
    respond_to do |format|
      if @accounting_group.update(accounting_group_params)
        format.html { redirect_to @accounting_group, notice: 'Accounting group was successfully updated.' }
        format.json { render :show, status: :ok, location: @accounting_group }
      else
        format.html { render :edit }
        format.json { render json: @accounting_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounting_groups/1
  # DELETE /accounting_groups/1.json
  def destroy
    @accounting_group.destroy
    respond_to do |format|
      format.html { redirect_to accounting_groups_url, notice: 'Accounting group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounting_group
      @accounting_group = AccountingGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accounting_group_params
      params.require(:accounting_group).permit(:accounting_group_code, :accounting_group_name, :accounting_class, :deleted_at)
    end
end
