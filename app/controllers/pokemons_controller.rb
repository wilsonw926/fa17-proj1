class PokemonsController < ApplicationController
	
	def capture
		newPokemon = Pokemon.find(params[:id])
		newPokemon.trainer = current_trainer
		newPokemon.save
		redirect_to root_path
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health -= 10
		pokemon.save
		if pokemon.health <= 0
			pokemon.delete
		end
		redirect_to trainer_path(id: pokemon.trainer_id)
	end

	def create
		pokemon = Pokemon.new
		pokemon.update(params.require(:pokemon).permit(:name))
		pokemon.trainer_id = current_trainer.id
 	    pokemon.level = 1
 	    pokemon.health = 100
 	    if pokemon.save
 			redirect_to trainer_path(id: current_trainer.id)
 		else
 			flash[:error] = @new_pokemon.errors.full_messages.to_sentence
 			redirect_to new_pokemon_path
 		end
	end

end