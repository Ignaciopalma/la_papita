class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_manager!, only: [:index]
  before_action :authenticate_admin!, only: [:new]
  before_action :authenticate_cashier!, only: [:new]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all

    @orders_this_month = Order.where(created_at: Time.now.beginning_of_month..Time.now.end_of_month)
    @sales = []
    @orders_this_month.each do |order| 
      @sales.push(order.total)
    end
    @total_sales_this_month = @sales.reduce(:+)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order_details = @order.order_details
    @total_consumption = {}

    @order_details.each do |order_detail|
      qty = order_detail.quantity
      order_detail.product.consumptions.each do |consumes|
        if @total_consumption[consumes.supply_id]
          @total_consumption[consumes.supply_id] += consumes.consumption * qty
        else 
          @total_consumption[consumes.supply_id] = consumes.consumption * qty
        end
      end
    end
    
  end

  # GET /orders/new
  def new
    @categories = Category.all
    @products = Product.all
    @order = Order.new
    @order_details = @order.order_details.build

    #Order.where(order.cashier.sign_in_count === current_cashier)
    if cashier_signed_in?  
      @cashier_name = current_cashier.name
      @total_cash_sales = Order.where(cashier_id: current_cashier.id, sign_in_count: current_cashier.sign_in_count, payment_method: "Efectivo")
      @total_credit_sales = Order.where(cashier_id: current_cashier.id, sign_in_count: current_cashier.sign_in_count, payment_method: "Credito")
      @total_debit_sales = Order.where(cashier_id: current_cashier.id, sign_in_count: current_cashier.sign_in_count, payment_method: "Debito")
      @total_agreement_sales = Order.where(cashier_id: current_cashier.id, sign_in_count: current_cashier.sign_in_count, payment_method: "Convenio")
      
      @cash_values = []
      @credit_values = []
      @debit_values = []
      @agreement_values = []

      if @total_cash_sales.length === 0
        @cash_values = [0]
      else
        @total_cash_sales.each do |t| 
          @cash_values.push(t.total)
        end
      end

      if @total_credit_sales.length === 0
        @credit_values = [0]
      else
        @total_credit_sales.each do |t| 
          @credit_values.push(t.total)
        end
      end

      if @total_debit_sales.length === 0
        @debit_values = [0]
      else  
        @total_debit_sales.each do |t| 
          @debit_values.push(t.total)
        end
      end

      if @total_agreement_sales.length === 0
        @agreement_values = [0]
      else
        @total_agreement_sales.each do |t| 
          @agreement_values.push(t.total)
        end
      end

      @total_cash = @cash_values.reduce(:+)
      @total_credit = @credit_values.reduce(:+)
      @total_debit = @debit_values.reduce(:+)
      @total_agreement = @agreement_values.reduce(:+)
    end

  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update_supplies
    supplies_to_update = params[:supplies_ids].length - 1
    index = 0
    while index <= supplies_to_update 
      Supply.where(id: params[:supplies_ids][index]).update_all(stock: params[:new_stock_amount][index])
      index += 1
    end
    redirect_to action: 'new'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:sign_in_count, :cashier_id, :cashier_name, :client, :detail, :payment_method, :total, order_details_attributes: [:order_id, :comments, :quantity, :sub_total, :product_id], supplies_attributes: [:name, :stock, :id])
    end
end
