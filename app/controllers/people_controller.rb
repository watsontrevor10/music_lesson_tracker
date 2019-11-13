class PeopleController < ApplicationController
  # methods with views
  def index
    @people = Person.all 
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  # methods without views
  def create 
    @person = Person.new(person_params)
binding.pry
    if @person.save
      redirect_to person_path(@person.id)
    else
      render :new
    end
  end

  def update 
    @person = Person.find(params[:id])
  
    if @person.update(person_params)
      redirect_to person_path
    else
      render :edit
    end
  end

  def destroy 
    Person.find(params[:id]).destroy
    redirect_to people_path
  end

  private 
  def person_params 
    params.require(:person).permit(:first_name, :last_name, :phone, :email, :age)
  end
end


# class NotesController < ApplicationController
#   def index
#     @notes = Note.all
#   end

#   def show
#     @note = Note.find(params[:id])
#   end

#   def new
#     @note = Note.new
#   end

#   def create
#     @note = Note.new(note_params)
 
#     if @note.save
#       redirect_to note_path(@note.id)
#     else
#       render :new
#     end
#   end

#   def edit
#     @note = Note.find(params[:id])
#   end

#   def update
#     @note = Note.find(params[:id])
  
#     if @note.update(note_params)
#       redirect_to notes_path
#     else
#       render :edit
#     end
#   end

#   def destroy
#     Note.find(params[:id]).destroy
#     redirect_to notes_path
#   end
 
#   private
 
#     def note_params
#       params.require(:note).permit(:title, :author, :body)
#     end
# end
