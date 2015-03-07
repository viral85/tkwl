# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  config.track_inventory_levels = false 

   if Rails.env.production? then
  #S3 configuration
  attachment_config = {

    s3_credentials: {
      access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      bucket:            ENV['S3_BUCKET_NAME']
    },
    s3_host_alias: 'cdn.tokyowheel.com',
    storage:        :s3,
    s3_headers:     { "Cache-Control" => "max-age=31557600" },
    s3_protocol:    "http",
    bucket:         ENV['S3_BUCKET_NAME'],
    url:            ":s3_alias_url",

    styles: {
        
        pico:     "16x16>",
        icon:     "32x32>",
        mini:     "48x48>",
        thumb:    "50x50>",
        small:    "100x100>",
        compact:  "160x160>",
        medium:   "240x240>",
        product:  "240x240>",
        large:    "480x480>",
        grande:   "600x600>",
        super: "1024x1024>",
        extra: "2048x2048>",
    },

    path:           "/files/:id/:basename_:style.:extension",
    default_url:    "/files/:id/:basename_:style.:extension",
    default_style:  "product"
  }

  attachment_config.each do |key, value|
    Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
  end
end

Spree::Auth::Config[:registration_step] = false;

end



Spree.user_class = "Spree::User"



