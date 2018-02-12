
class FightService
  def initialize(match_params)
    @match_params = match_params
    @P1 = Fighter.find(match_params["fighter1"])
    @P2 = Fighter.find(match_params["fighter2"])
    @message = "Fight starts</br>"
  end
  
  def fight
    while @P1.hp > 0 && @P2.hp > 0
      if [1,2].sample.odd?
        @P2.hp -= @P1.damage
        @message += "#{@P1.name} hits #{@P2.name} for #{@P1.damage} damages; #{@P2.hp}HP left</br>"
      else
        @P1.hp -= @P2.damage
        @message += "#{@P2.name} hits #{@P1.name} for #{@P2.damage} damages; #{@P1.hp}HP left</br>"
      end
    end
    winner = @P1.hp <= 0 ? @P2.id : @P1.id
    @message += @P1.hp <= 0 ? "#{@P2.name} WINS !" : "#{@P1.name} WINS !"
    {
        fighter1:@match_params["fighter1"],
        fighter2:@match_params["fighter2"],
        winner: winner,
        log: @message
    }
  end
end