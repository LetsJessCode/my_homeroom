class Assignment < ApplicationRecord
    belongs_to :student
    belongs_to :subject
    
    accepts_nested_attributes_for :student

    scope :completed, -> { where.not(completed: nil)}
    scope :due_date, -> { self.date.where("date > ?", 3.days.ago) }
    scope :not_completed, -> { where(completed: nil)}
    scope :sorted_subject, -> { self.subject.order(published: :desc)}

    scope :search, -> (term) { self.title.where("title LIKE ?", "%#{term}%") }

    
end
