#! /bin/bash
#
#
#############

# begin functions #

Help()
{
   # hisplay help
   echo "Syntax: subnetsh.sh [-g|h|v|V]"
   echo
   echo "options:"
   echo "h     Print this Help."
   echo "c     Enter the IP with the CIDR notation."
   echo "m     Enter the Subnet Mask"
   echo
}

# end functions #
# begin getting the options #

while getopts ":h" option; do
   case $option in
      \?) #invalid option
         echo "Invalid argument. Use -h for help"
         exit;;
      h) #display help
         Help
         exit;;
      c) #print network information from the ip with the cidr notation
         IpCIDR
         exit;;
      m) #print network information from the subnet mask
         Netmask
         exit;;
   esac
done

# end getting the options #

echo "Hello $(whoami)!"
