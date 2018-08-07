CarrierWave.configure do |config|
  config.asset_host = ''
  config.permissions = 0666
  config.directory_permissions = 0777
  config.storage = :file
end