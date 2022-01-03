class Parameter < ApplicationRecord
  belongs_to :parameter_measure
  belongs_to :component
end
