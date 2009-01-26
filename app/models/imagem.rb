class Imagem < ActiveRecord::Base
 require 'paperclip' 
 has_attached_file :avatar, :styles => { :large => "640x480>", :thumb => "50x50>" }, :path => ":rails_root/public/avatars/eventos/:id/:style.:extension",
 :url => "/avatars/eventos/:id/:style.:extension"
 belongs_to :evento
end
