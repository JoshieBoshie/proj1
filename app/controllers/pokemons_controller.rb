class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
  end

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer_id = current_trainer.id
    @pokemon.save
    puts @pokemon.trainer_id
    puts @pokemon.save
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
  if @pokemon.health>=10 and @pokemon.trainer_id != current_trainer.id
    @pokemon.health -= 10
    @pokemon.save
  end
    redirect_to trainer_path(@pokemon.trainer_id)
  end

  def heal
    @pokemon = Pokemon.find(params[:id])
  if @pokemon.health<=90 and @pokemon.trainer_id == current_trainer.id
    @pokemon.health += 10
    @pokemon.save
  end
    redirect_to trainer_path(current_trainer.id)
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer_id = current_trainer.id
    if @pokemon.save
      redirect_to trainer_path(current_trainer.id)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to pokemons_new_path
    end

  end

  def pokemon_params
    params.require(:pokemon).permit(:name,:ndex)
  end
end
