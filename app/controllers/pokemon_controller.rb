class PokemonController < ApplicationController

	def capture
		@poke = Pokemon.find_by(id: params[:id])
		@poke.update(trainer: current_trainer)

		redirect_to root_path
	end

	def damage
		@poke = Pokemon.find_by(id: params[:id])
		@poke.update(health: @poke.health - 10)

		if(@poke.health <= 0)
			@poke.destroy
		end

		redirect_to trainer_path(id: current_trainer)
	end

	def create

		#params.permit(:name, :ndex)
		@name = params[:pokemon][:name]
		@ndex = params[:pokemon][:ndex]

		@poke = Pokemon.find_by(name: @name)

		if @name.nil? or (@name.eql?"")
			@pokemon = Pokemon.new
			render '/pokemons/new'
		elsif @poke.nil?
			@p = Pokemon.create(name: @name, level: 1, trainer: current_trainer, ndex: @ndex, health: 100)
			redirect_to trainer_path(id: current_trainer)
		else
			@pokemon = Pokemon.new
			render '/pokemons/new'
		end

		#@p = Pokemon.create(params)
		#@p.health = 100
		#@p.level = 1
		#@p.trainer = current_trainer
		#@p.save

		
		
	end

	def new
		@pokemon = Pokemon.new
		render '/pokemons/new'
	end
end