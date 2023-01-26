f [ "$1" == "" ]

then

	echo "Se requieren un parametro."

	echo "Uso: $0 ip"

	exit

fi

ipset create shun hash:ip timeout 300 -exist

ipset add shun $1 
