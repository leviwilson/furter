Before do
  launch_app APP_BUNDLE_PATH, '6.1', 'ipad'
end

at_exit do
  FileUtils.rm_rf 'screenshots'
  FileUtils.rm_rf 'explicit'
end