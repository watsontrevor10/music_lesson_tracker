class LessonPaymentsController < ApplicationController
  before_action :payment_find only: [:show, :edit, :update, :destroy]
  before_action :person_find

  def index
    @payments = @person.payments
  end

  def show
    #@payment = Payment.find(params[:id]) 
  end

  def new
  
  end

  def edit
    
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
    

    if @payment.update(payment_params)
      redirect_to lesson_payment_path
    else
      render :edit
    end 
  end

  def destroy
    
    redirect_to lesson_payments_path
  end

  private
  def payment_params 
    params.require(:payment).permit(:payment_type, :amount, :date, :hours)
  end

  def payment_find
    @payment = Payment.find(params[:id]) 
  end

  def person_find
    @person = Person.find(params[:person_id])
  end
end
