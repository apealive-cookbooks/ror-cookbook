
# install content
# TODO: Rewrite with chef
# FIXME: replace/patch chooser with an chef/attribs
#script "RoRcontent" do
#    interpreter "bash"
#    code File.join(node[:build_dir],linuxscripts,"RoRcontent.sh")
#    #environment {"aa" => "bb"}
#    #user
#    #group
#end

ror-rc-dir = File.join(node[:ror][:home_dir],'.rigsofrods') 
ror-deps-dir = File.join(node[:ror][:build_path],'ror-deps')

directory ror-rc-dir do
    recursive True
end

directory ror-deps-dir do
    recursive True
end

node[:ror][:content].each do |content|
    pkg_name, http_url = content
    remote_file File.join(ror-deps-dir,pkg_name) do
        url http_url
    end
    #FIXME
    unzip File.join(ror-deps-dir,pkg_name) do
        destination File.join(ror-rc-dir, 'packs')
    end
    #FIXME
    move "move streams from pack" do
        #-t
        from File.join(ror-rc-dir,'packs','streams')
        destination File.join(ror-rc-dir, 'packs')
    end
    #FIXME
    directory File.join(ror-rc-dir,'packs','streams') do
        action :delete
    end
end


