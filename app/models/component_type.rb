class ComponentType < ApplicationRecord
  belongs_to :maintype, class_name: ComponentType, optional: true
  has_many :subtypes, class_name: ComponentType, foreign_key: 'maintype_id'
  belongs_to :user
end

def get_children(level = 0, result = [])
  result.push([level, self])
  unless self.subtypes.empty?
    self.subtypes.each do |child|
      child.get_children(level+1, result)
    end
  end
  if(level == 0)
    return result
  end
end

def get_parents(result = [])
  if self.maintype.present?
    result.push(self.maintype)
    self.maintype.get_parents(result)
  else
    return result
  end
end
