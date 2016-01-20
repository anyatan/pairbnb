CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "YAKIAJSW543465SRC37LA",
      :aws_secret_access_key  => "2aIzhFTnPUx0aLyDBTNgQtZ1AalOER4CbrPv8PR8",
      :region                 => 'us-west-2' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "anya8989"
end