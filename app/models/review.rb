class Review < ApplicationRecord
  belongs_to :drink
  validate :stars_checker
  def stars_checker
    check=stars.to_i
    if check<1
      errors.add(:stars,"エラー(星は1~5の五段階評価です)")
    end
  end
end
