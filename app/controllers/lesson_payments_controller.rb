class LessonPaymentsController < ApplicationController
  def index
    @payments = LessonPayment.all
  end

  def show
    @payment = LessonPayment.find(params[:id])
  end

  def new
    # @person = Person.find(params[:id])
    @payment = LessonPayment.new 
  end

  def edit
    @payment = LessonPayment.find(params[:id])
  end

  def create 
    @payment = LessonPayment.new(payment_params)

    if @payment.save
      redirect_to lesson_payment_path(@payment.id)
    else
      render :new
    end
  end

  def update
    @payment = LessonPayment.find(params[:id])

    if @payment.update(payment_params)
      redirect_to lesson_payment_path
    else
      render :edit
    end 
  end

  def destroy
    Payment.find(params[:id]).destroy
    redirect_to lesson_payments_path
  end

  private
  def payment_params 
    params.require(:payment).permit(:payment_type, :amount, :date, :hours)
  end
end
