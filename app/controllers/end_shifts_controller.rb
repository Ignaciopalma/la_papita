class EndShiftsController < ApplicationController
  before_action :set_end_shift, only: [:show, :edit, :update, :destroy]
  
  def index
    @end_shifts = EndShift.all
  end

  def show
  end

  def new
    @end_shift = EndShift.new

    @cashier_name = params[:cashier_name]
    @total_cash = params[:total_cash]
    @total_credit = params[:total_credit]
    @total_debit = params[:total_debit]
    @total_agreement = params[:total_agreement]
  end

  def edit
  end

  def create
    @end_shift = EndShift.new(end_shift_params)
    
    respond_to do |format|
      if @end_shift.save
        format.html { redirect_to root_path, notice: 'End shift was successfully created.' }
        format.json { render :show, status: :created, location: @end_shift }
      else
        format.html { render :new }
        format.json { render json: @end_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @end_shift.update(end_shift_params)
        format.html { redirect_to @end_shift, notice: 'End shift was successfully updated.' }
        format.json { render :show, status: :ok, location: @end_shift }
      else
        format.html { render :edit }
        format.json { render json: @end_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @end_shift.destroy
    respond_to do |format|
      format.html { redirect_to end_shifts_url, notice: 'End shift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_end_shift
      @end_shift = EndShift.find(params[:id])
    end

    def end_shift_params
      params.require(:end_shift).permit(:cashier_name, :cash, :debit, :credit, :agreement)
    end
end
