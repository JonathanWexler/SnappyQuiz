OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '117964625059882', 'ec6297cdc17bace782983fb6015acb21'
  provider :twitter, 'RSwTwCXQTW639rD0kwxmhQ', 'cC3cLNmKBEgGrvQEzyPN6likKvIEVNEDnap1Dg5NA'
  provider :google_oauth2, '123139479263.apps.googleusercontent.com', '07oh0tKWvxrAb0sbuaKFGV6w'
  provider :identity, on_failed_registration: lambda { |env|    
    IdentitiesController.action(:new).call(env)}
end