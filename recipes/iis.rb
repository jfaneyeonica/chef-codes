powershell_script 'Install IIS' do
    action :run
    code 'add-windowsfeature Web-Server'
  end
  
  service 'w3svc' do
    action [:enable, :start]
  end
  
#   template 'c:inetpubwwwrootDefault.htm' do
#     source 'index.html.erb'
#     rights :read, 'Everyone'
#   end

file '/var/www/html/index.html' do
    content '<html>
    <head>
    <title> This is simple webpage </title>
    </head>
    <body>
    <h1> This is a special website </h1>
    </body>
</html>'
end
