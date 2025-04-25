class Cliente < ApplicationRecord
  has_one :user, as: :userable, dependent: :destroy, blank: true, null: true
end
