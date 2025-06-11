CXY_BUILD_DIR=File.join(File.dirname(__FILE__), '.build')
ENV['CXY_LISTEN_PORT'] = "8200"
ENV['CXY_WWW_DIR'] = File.join(CXY_BUILD_DIR, 'www')

unless File.directory?(CXY_BUILD_DIR)
  FileUtils.mkdir_p(CXY_BUILD_DIR)
end

task :build do
  puts "Building Cxy File Server..."
  version = (ENV['CXY_FS_VERION'] || '0.1.0').delete_prefix('v')
  system("cxy", "build", "app.cxy", "--build-dir", CXY_BUILD_DIR, "--with-mm", "-o", "cxyfs", "-g",
          "-DCXY_FILE_SERVER_ROUTE=\"/\"", "-DCXY_FS_VERION=\"#{version}\"") 
end
