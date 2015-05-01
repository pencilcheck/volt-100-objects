class Job < Volt::Model
  validate :title, unique: true
  belongs_to :company
end
