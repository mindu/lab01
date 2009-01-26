class Evento < ActiveRecord::Base
	has_many :imagems, :dependent => :destroy
end
