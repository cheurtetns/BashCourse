set -E
function errorhandler() {
    #Uncomment for debuging this function
    #echo -e "${BASH_SOURCE[@]} --- ${BASH_LINENO[@]} --- ${FUNCNAME[@]}"
    if [[ ${1} -ne 0 ]]; then
        echo -e "\033[0;31mERROR: command \`${BASH_COMMAND}' returned ${1}, stack:\033[0m"
        for i in $(seq 0 $((${#BASH_LINENO[@]} - 2))); do
            echo -e "\033[0;31m${BASH_SOURCE[$i + 1]}:${BASH_LINENO[$i]}(${FUNCNAME[$i + 1]})\033[0m"
            #echo -e "\033[0;33m$(sed -n ${BASH_LINENO[$i]}p ${BASH_SOURCE[$i+1]})\033[0m"
            mapfile -n ${BASH_LINENO[$i]} -t <${BASH_SOURCE[$i + 1]}
            echo -e "\033[0;33m${MAPFILE[${BASH_LINENO[$i]} - 1]}\033[0m"
        done
    fi
}
trap 'errorhandler ${?}' ERR
