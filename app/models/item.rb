class Item < ActiveRecord::Base
  validates_presence_of :content
  validates_inclusion_of :completed, :in => [true, false]
  default_scope :order => 'id ASC'

  def self.all_since_first_incomplete
    first_incomplete = find(:first, :conditions=>"completed = false")
    if (first_incomplete.nil?)
      all
    else
      find(:all, :conditions=>"id >= #{first_incomplete.id}")
    end
  end

end
