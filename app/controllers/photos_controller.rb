class PhotosController < ApplicationController
def index
matching_photos = Photo.all 

  @list_of_photos = matching_photos.order({ :created_at => :desc })

  render({ :template => "photo_templates/index.html.erb" })
end

def show 
# parameters: {"path_id"=>"777"}
url_id = params.fetch("path_id")

matching_photos = Photo.where({ :id => url_id })

@the_photo = matching_photos.at(0)

  render({ :template => "photo_templates/show.html.erb" })
end 

def bali
  # Parameters: {"toast_id"=>"785"}

  the_id = params.fetch("toast_id")

  matching_photos = Photo.where({ :id => the_id })

  the_photo = matching_photos.at(0)

  #the_photo.destroy
  
  the_photo

  render({ :template => "photo_templates/bali.html.erb" })
end
end 
