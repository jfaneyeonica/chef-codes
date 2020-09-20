powershell_script 'Install IIS' do
    action :run
    code 'add-windowsfeature Web-Server'
  end
  
  service 'w3svc' do
    action [:enable, :start]
  end
  
  template 'c:inetpubwwwrootDefault.htm' do
    source 'index.html.erb'
    rights :read, 'Everyone'
  end
