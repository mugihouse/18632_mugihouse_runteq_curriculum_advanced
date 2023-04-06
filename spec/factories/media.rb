# == Schema Information
#
# Table name: media
#
#  id         :bigint           not null, primary key
#  media_type :integer          default("image"), not null
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :medium, class: 'Media' do
    media_type { :image }
    name {'test_image_name_1'}
    association :article
  end
end
