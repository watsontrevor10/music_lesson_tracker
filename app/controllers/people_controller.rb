class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  def index
    @people = Person.all 
  end

  def show
    
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def create 
    @person = Person.new(person_params)

    if @person.save
      redirect_to person_path(@person.id)
    else
      render :new
    end
  end

  def update 
  
    if @person.update(person_params)
      redirect_to person_path
    else
      render :edit
    end
  end

  def destroy 
    @person.destroy 
    redirect_to people_path
  end

  private 

  def set_person
    @person = Person.find(params[:id])
  end
  def person_params 
    params.require(:person).permit(:first_name, :last_name, :phone, :email, :age)
  end
end