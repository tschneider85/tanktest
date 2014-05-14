require 'rrobots'

class Killa
  include Robot

  def tick events
    turn_radar 1 if time == 0
    turn_gun 30 if time < 3
    accelerate 1
    fire 3 unless events['robot_scanned'].empty?
  end3
end

	def radarz tracking
		broadcast (ping * all) radar_heading.echo
		turn_gun.match.radar_heading
		fire 1
	end