class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def all_visible
  	where(visible: true)
  end

  def all_visible_and_sorted
  	where(visible: true).order('rank desc')
  end

end
