require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region: 'ap-northeast-1'
  }

  case Rails.env
    when 'production'
      config.fog_directory = 'tutors-upload-test'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tutors-upload-test'

    when 'development'
      config.fog_directory = 'tutors-upload-test'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tutors-upload-test'

    when 'test'
      config.fog_directory = 'tutors-upload-test'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tutors-upload-test'
  end
end