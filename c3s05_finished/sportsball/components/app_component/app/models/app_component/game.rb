module AppComponent
  class Game < ActiveRecord::Base
    validates :date, :location, :first_team, :second_team, :winning_team,
              :first_team_score, :second_team_score, presence: true
    belongs_to :first_team, class_name: 'AppComponent::Team'
    belongs_to :second_team, class_name: 'AppComponent::Team'
  end
end
