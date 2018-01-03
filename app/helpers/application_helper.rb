module ApplicationHelper

  def create_constellation(name, description, stars)
    constellation = Constellation.create(name: name, description: description)
    stars.times do |i|
      Component.create(
          name: "star#{i}",
          current_state: false,
          component_type: 'STAR',
          description: "#{i+1}",
          constellation: constellation
      )
    end
    Component.create(
        name: 'leapfrog',
        current_state: false,
        component_type: 'PART_WIN',
        description: 'Leap Frog',
        constellation: constellation
    )
    Component.create(
        name: 'complete',
        current_state: false,
        component_type: 'FULL_WIN',
        description: 'Complete',
        constellation: constellation
    )
  end

end
