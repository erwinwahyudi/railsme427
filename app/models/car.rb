class Car < ActiveRecord::Base
	validates :name, length: { minimum: 5 } #minimum input 5 karakter
	validates :name, presence: true #teks tidak boleh kosomg
end
