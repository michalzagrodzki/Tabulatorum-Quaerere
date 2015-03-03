class Story < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true
  validates :content, presence: true

  # Returns story, which contains at least one word from query
  def self.search(query)
    # parameters for exact search
    where("name like ?", "%#{query}%")
  end

end
