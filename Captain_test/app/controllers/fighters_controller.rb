class FightersController < ApplicationController
  before_action :set_fighter, only: [:show, :edit, :update, :destroy]

  # GET /fighters
  # GET /fighters.json
  def index
    @fighters = Fighter.all
  end

  # GET /fighters/1
  # GET /fighters/1.json
  def show
    @victory = Match.victory(@fighter.name).count
    @fights = Match.all_fight(@fighter.name).count
    @winrate = @fights != 0 ? (@victory.to_f / @fights.to_f) * 100 : 0
    @weapon = Weapon.find(@fighter.weapon_id) if !@fighter.weapon_id.nil?
  end

  # GET /fighters/new
  def new
    @fighter = Fighter.new
    @weapon = Weapon.valid_weapon(@fighter.dexterity, @fighter.strength, @fighter.intelligence) || []
  end

  # GET /fighters/1/edit
  def edit
    @weapon = Weapon.valid_weapon(@fighter.dexterity, @fighter.strength, @fighter.intelligence) || []
  end

  # POST /fighters
  # POST /fighters.json
  def create
    @fighter = Fighter.new(fighter_params)

    respond_to do |format|
      if @fighter.save
        format.html { redirect_to @fighter, notice: 'Fighter was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /fighters/1
  # PATCH/PUT /fighters/1.json
  def update
    respond_to do |format|
      if @fighter.update(fighter_params)
        format.html { redirect_to @fighter, notice: 'Fighter was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /fighters/1
  # DELETE /fighters/1.json
  def destroy
    @fighter.destroy
    respond_to do |format|
      format.html { redirect_to fighters_url, notice: 'Fighter was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fighter
      @fighter = Fighter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fighter_params
      params.require(:fighter).permit(:name, :strength, :dexterity, :intelligence, :weapon_id, :talent)
    end
end
