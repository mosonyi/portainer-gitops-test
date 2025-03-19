docker build -t mosonyi/portainer-gitops-test:dev .

echo "example@example.com" | docker config create to_email_config -
echo "smtp.example.com" | docker config create smtp_server_config -
echo "smtpuser" | docker config create smtp_user_config -
echo "server.example.com" | docker config create server_hostname_config -
