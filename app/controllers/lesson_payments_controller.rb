class LessonPaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  before_action :set_person

  def index
    @payments = @person.payments
  end

  def show
  end

  def new
  
  end

  def edit
    
  end

  def create 
    @payment = LessonPayment.new(payment_params)

    if @payment.save
      redirect_to person_lesson_payments_path(@person)
    else
      render :new
    end
  end

  def update

    if @payment.update(payment_params)
      redirect_to lesson_payment_path
    else
      render :edit
    end 
  end

  def destroy
    @payment.destroy
    redirect_to lesson_payments_path
  end

  private
  def payment_params 
    params.require(:payment).permit(:payment_type, :amount, :date, :hours)
  end

  def set_payment
    @payment = Payment.find(params[:id]) 
  end

  def set_person
    @person = Person.find(params[:person_id])
  end
end
