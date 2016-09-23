class CarsController < ApplicationController

	layout 'adm'

	def show
		@cars = Car.all

		#untuk merender langsung ke template yg dituju
		render template: "cars/index.html.erb", layout: "application"
	end
  	
	def index
		@cars = Car.all #ambil data dari model Car
	end

	def form_insert
	  	@car = Car.new
	end

	def insert_data
	  	@car = Car.new
	  	# Parameter yang dikirimkan akan ditangkap dengan dengan format params[:object][:method].
	  	@car.name = params[:car][:name]
	  	@car.brand = params[:car][:brand]
	  	@car.description = params[:car][:description]
	  	@car.harga = params[:car][:harga]
	  	@car_save = @car.save

	  	if @car_save
	  		redirect_to '/cars'
	  	else
	  		render 'form_insert'
	  	end
	end

	def form_update
	  	@id = params[:id]
	  	@car = Car.find(@id.to_i)
	end

	def update_data
	  	@car = Car.find(params[:car][:id].to_i)
	  	@car.name = params[:car][:name]
	  	@car.brand = params[:car][:brand]
	  	@car.description = params[:car][:description]
	  	@car.harga = params[:car][:harga].to_i
	  	@car_save = @car.save

	  	if @car_save
	  		redirect_to '/cars'
	  	else
	  		render 'form_update'
	  	end
	end

	def hapus
	  	@id = params[:id]
	  	@car = Car.find(@id.to_i)

	  	@car_hapus = @car.destroy

	  	redirect_to '/cars'
	end

end
