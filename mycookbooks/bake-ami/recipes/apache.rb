package 'Install Apache' do
    case node[:platform]
    when 'redhat','centos'
                    package_name 'httpd'
                    action    :install
    when 'ubuntu','debian'
                    package_name 'apache2'
                    action :install
    end
end

service 'httpd' do
    action [:enable, :start]
end

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
