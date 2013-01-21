require 'net/ftp'
require 'ping'
require 'timeout'

# Put your IP address here below of the EQ
host = "IPADDRESS needed"
# puts "#{host} is alive.\n" if Ping.pingecho(host);
#-----------------------------
# the ping module only use TCP ping, not ICMP even if we are root
if Ping.pingecho("#{host}") then
    puts "The giant ape lives!\n";
else
    puts "Can't contact the device on the network\n";
end

puts " "
puts "EQ8096 Software upgrade tool v 0.1"
puts "==============================="
puts "= All input is case sensitive ="
puts "= There is no validation for  ="
puts "= IP addresses                ="
puts "==============================="
print "Input IP address for EQ[ENTER]: "

# Input IP address for EQ unit
ipaddress = gets.chomp

puts "IP address is #{ipaddress}"

print "Do you want to proceed with upgrading EQ with IP address #{ipaddress} Y/N [ENTER]"

while failure==false

        answer = gets.chomp

        if answer =="Y"

                puts "Proceeding...."

                failure = true

server = ipaddress
# add username
username = 'username'
# add password
password = 'password'
upload_dir = '/'
upload_file1 = 'ppc1.elf.gz'
upload_file2 = 'ppc2.elf.gz'
upload_file3 = 'tiger'
upload_file4 = 'nios1.elf'
upload_file5 = 'nios2.elf'
upload_file6 = 'lion'
upload_file7 = 'web.zip'
# This might be changed in future releases
upload_file8 = 'OP_FW_v908.bin'

# Same for this one
upload_file9 = 'OP_SW_v070.bin'

upload_file10 = 'OC_firm_app'
upload_file20 = 'OC_soft_app'
