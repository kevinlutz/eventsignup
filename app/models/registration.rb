class Registration < ApplicationRecord
  belongs_to :event

  validates :name, presence: true

  validates :email, format: { with: /\S+@\S+/ }

  HOW_HEARD_OPTIONS = [
    "Facebook",
    "Instagram",
    "Email",
    "Tiktok",
    "Twitter",
    "Friend",
    "Other"
  ]

  validates :how_heard,
            inclusion: { in: HOW_HEARD_OPTIONS }
end
