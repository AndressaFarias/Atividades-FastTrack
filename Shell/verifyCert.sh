#!/bi:wq
echo 'fazendo'

echo openssl s_client -connect $1:443 2>/dev/null | openssl x509  -enddate | grep notAfter

echo 'feito'
# echo | openssl s_client -connect $1:443 2>/dev/null | openssl x509  -enddate | grep notAfter

#echo | openssl s_client -connect www.google.com.br:443 2>/dev/null | openssl x509  -enddate | grep notAfter

# echo | openssl s_client -connect www.google.com.br:443 2>/dev/null | openssl x509  -dates | grep notAfter

# echo | openssl s_client -servername unix.stackexchange.com -connect unix.stackexchange.com:443 2>/dev/null | openssl x509  -dates | grep notAfter

# echo | openssl s_client -servername unix.stackexchange.com -connect unix.stackexchange.com:443 2>/dev/null | openssl x509 -noout -issuer -subject -dates

echo | openssl s_client -connect www.google.com.br:443 2>/dev/null | openssl x509 -noout -dates | tail -1 | tr -s " " |cut -d "=" -f2 | cut -d " " -f1,2,4

