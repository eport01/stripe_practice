# == Schema Information
#
# Table name: purchases
#
#  id         :bigint           not null, primary key
#  status     :string
#  stripe_ref :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_purchases_on_article_id  (article_id)
#  index_purchases_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (article_id => articles.id)
#  fk_rails_...  (user_id => users.id)
#
class Purchase < ApplicationRecord
  belongs_to :article
  belongs_to :user
end
