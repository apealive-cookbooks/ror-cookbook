
# install core
# TODO: Rewrite with chef
script "RoRcore" do
    interpreter "bash"
    code File.join(node[:build_dir],linuxscripts,"RoRcore.sh")
    #environment {"aa" => "bb"}
    #user
    #group
end

