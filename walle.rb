require 'rrobots'

class WallE
  include Robot

  def tick events
  	say "crash & burn"
    turn_radar 1 if time == 0
    turn_gun 30 if time < 3
    accelerate 1
    turn.reverse 2
    fire 3 unless events['robot_scanned'].empty?
  end
end
