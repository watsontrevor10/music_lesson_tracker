class PeopleController < ApplicationController
  # methods with views
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  # methods without views
  def create 
  end

  def update 
  end

  def destroy 
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
