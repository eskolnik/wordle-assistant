desc "Minifies bookmarklet JS"
task :build_bookmarklet do
    `sh bin/build-bookmarklet.sh`
end