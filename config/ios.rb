# -*- coding: utf-8 -*-

begin
  require 'bundler'
  Bundler.require(:default, :ios)
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake ios:config' to see complete project settings.
  app.name = 'MGSpaceInvaders'

  app.icons = ['large', 'medium', 'small']

  app.identifier = 'dk.ccapps.cch'

  app.development do
    app.provisioning_profile = 'provision/Development.mobileprovision'
    app.codesign_certificate = 'iPhone Developer: Casper Christensen'
  end

  # Set portrait mode only
  app.info_plist['UISupportedInterfaceOrientations'] = ['UIInterfaceOrientationPortrait']
end
