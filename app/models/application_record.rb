class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  class << self 
    def all_visible(store=nil)
      field_name = if has_attribute? :visible 
        :visible 
      elsif has_attribute? :visiable 
        :visiable
      else raise "has no visible field" 
      end 
      if store.is_a? Integer 
        where(field_name => true, storeId: store)
      elsif store.is_a? Store 
        where(field_name => true, storeId: store.id)
      elsif store.is_a? NilClass 
        where(field_name => true)
      else 
        raise "Illegal argument #{store}"
      end 
    end

    def all_visible_and_sorted(store=nil)
      rank_field = if has_attribute?(:rank) 
        :rank 
      elsif has_attribute?(:zorder) 
        :zorder 
      else 
        raise "no rank or zorder field"
      end 
      self.all_visible(store).order("#{rank_field} desc")
    end
  end

end
