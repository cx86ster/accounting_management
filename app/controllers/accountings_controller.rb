class AccountingsController < ApplicationController
  before_action :set_accounting, only: [:show, :edit, :update, :destroy]

  # GET /accountings
  # GET /accountings.json
  def index
    session[:params] = params[:q] if params.has_key?(:q)
    @q = Accounting.ransack(session[:params])
    @accountings = @q.result.page(params[:page]).per(30)
    @sum_accounting_money = Accounting.ransack(session[:params]).result.sum(:accounting_money)
  end

  # GET /accountings/1
  # GET /accountings/1.json
  def show
  end

  # GET /accountings/new
  def new
    @accounting = Accounting.new
    @accounting.accounting_class_id = params[:accounting_class_id]
  end

  # GET /accountings/1/edit
  def edit
  end

  # POST /accountings
  # POST /accountings.json
  def create
    @accounting = Accounting.new(accounting_params)

    respond_to do |format|
      if @accounting.save
        format.html { redirect_to accountings_url, notice: '収支情報を作成しました。' }
        format.json { render :show, status: :created, location: @accounting }
      else
        format.html { render :new }
        format.json { render json: @accounting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accountings/1
  # PATCH/PUT /accountings/1.json
  def update
    respond_to do |format|
      if @accounting.update(accounting_params)
        format.html { redirect_to accountings_url, notice: '収支情報を変更しました。' }
        format.json { render :show, status: :ok, location: @accounting }
      else
        format.html { render :edit }
        format.json { render json: @accounting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accountings/1
  # DELETE /accountings/1.json
  def destroy
    @accounting.destroy
    respond_to do |format|
      format.html { redirect_to accountings_url, notice: '収支情報を削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounting
      unless Accounting.find_by(id: params[:id])
        redirect_to accountings_path, notice: '収支情報が存在しません。削除された可能性があります。'
      else
        @accounting = Accounting.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accounting_params
      params.require(:accounting).permit(:accounting_date, :accounting_money, :item_name, :accounting_group_id, :purchase_place, :accounting_source_id, :accounting_class_id)
    end
end
