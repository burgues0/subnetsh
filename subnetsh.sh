#! /bin/bash
#
#
#############
# begin functions #

help(){
   # display help
   echo "Syntax: subnetsh.sh [-g|h|v|V]"
   echo
   echo "options:"
   echo "h     Print this Help."
   echo "c     Enter the IP with the CIDR notation."
   echo "m     Enter the Subnet Mask"
   echo
}

cidr(){
   #subnet the network from the given ip/cidr
   echo $OPTARG
}

netmask(){
   #subnet the network from the given netmask
   echo $OPTARG
}

# end functions #
# begin getting the options #

while getopts :hc:m: option; do
   case $option in
      \?) #invalid option
         echo "Invalid argument. Use -h for help"
         exit;;
      h) #display help
         help
         exit;;
      c) #print network information from the ip with the cidr notation
	 cidr
         exit;;
      m) #print network information from the subnet mask
         netmask
         exit;;
   esac
done

# end getting the options #

help
