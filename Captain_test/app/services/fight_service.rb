
class FightService
  def initialize(match_params)
    @P1 = Fighter.find(match_params["first_fighter"])
    @P2 = Fighter.find(match_params["second_fighter"])
    @message = "Fight starts\r"
  end
  
  def fight
    while @P1.hp > 0 && @P2.hp > 0
      if [1,2].sample.odd?
        @P2.hp -= @P1.damage
        @message += "#{@P1.name} hits #{@P2.name} for #{@P1.damage} damages; #{@P2.hp}HP left\r"
      else
        @P1.hp -= @P2.damage
        @message += "#{@P2.name} hits #{@P1.name} for #{@P2.damage} damages; #{@P1.hp}HP left\r"
      end
    end
    winner = @P1.hp <= 0 ? @P2.name : @P1.name
    @message += @P1.hp <= 0 ? "#{@P2.name} WINS !" : "#{@P1.name} WINS !"
    {
        first_fighter:@P1.name,
        second_fighter:@P2.name,
        winner: winner,
        log: @message
    }
  end
end