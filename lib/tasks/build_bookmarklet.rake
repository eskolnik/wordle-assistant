desc "Minifies bookmarklet JS"
task :build_bookmarklet => :environment do
    server_url = Rails.application.credentials.server_url
    output_file = Rails.application.credentials.bookmarklet_path
    `sh bin/build-bookmarklet.sh #{server_url} #{output_file}`
    puts "Wrote to #{output_file}"
end