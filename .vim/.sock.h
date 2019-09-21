#include <sys/socket.h>	//socket, accept, listen
#include <arpa/inet.h>	//inet_ntop, inet_pton, htons, htonl etc
#include <netdb.h> 		//getprotobyname, struct addrinfo, struct sockaddr
#include <stdio.h>		//memset, perror (surprised!)
#include <unistd.h>		//close
#include <string.h>		//memset
#include<sys/types.h>	//needed in setsockopt contants, SOL_SOCKET, SO_REUSEADDR


