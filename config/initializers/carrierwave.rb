CarrierWave.configure do |config|
  config.cache_dir = "#{Rails.root}/tmp/uploads"
    if Rails.env.production?
      config.storage = :fog
      config.fog_credentials = {
        provider: 'AWS',                                      # required
        aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],          # required
        aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],  # required
        region: 'eu-west-1'                                  # optional, defaults to 'us-east-1'
      }
      config.fog_directory  = ENV['S3_BUCKET']            # required
      config.fog_public  = true                               # optional, defaults to true
    else
      config.storage = :file
    end
end