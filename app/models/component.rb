class Component < ApplicationRecord
  belongs_to :component_type
  belongs_to :package
  belongs_to :manufacture
end
