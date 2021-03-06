class Country < ActiveRecord::Base
    self.primary_key = "id"
    has_many :countries_lists
    has_many :lists, :through => :countries_lists
    accepts_nested_attributes_for :lists
end
