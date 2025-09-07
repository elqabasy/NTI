#!/bin/bash



DATA_FILE="./full-recon.json"


get-entity-totals(){
	entity=$1


	jq -r ".$entity[]" $DATA_FILE | wc -l
}



# get-entity-totals emails


main(){
	echo "TOTALS:"
	echo "  Emails: " $(get-entity-totals "emails")
	echo "  IPAdd.: " $(get-entity-totals "ips")
	echo "  Hosts.: " $(get-entity-totals "hosts")
	echo "  ASNS..: " $(get-entity-totals "asns")
}


# run main
main
