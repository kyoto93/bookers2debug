class Book < ApplicationRecord
	# has_many :user
	belongs_to :user # bookは1つのUserに所属している(Books belongs to a User.)。


	#バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。
	#presence trueは空欄の場合を意味する。
	validates :title, presence: true, length:{ maximum:50 }
	validates :body, presence: true, length: { maximum: 200 }
end
