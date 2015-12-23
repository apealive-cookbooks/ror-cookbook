

## Linux
git File.join(node[:ror][:build_dir],'/linuxscripts') do
    repository node[:ror][:linuxscripts_git_url]
    action :sync
end

