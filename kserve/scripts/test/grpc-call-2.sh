#!/bin/bash
set -o pipefail
set -o nounset
set -o errtrace
# set -x   #Uncomment this to debug script.

source "$(dirname "$(realpath "$0")")/../env.sh"
source "$(dirname "$(realpath "$0")")/../utils.sh"


export KSVC_HOSTNAME=$(oc get ksvc caikit-example-isvc-predictor -n ${TEST_NS} -o jsonpath='{.status.url}' | cut -d'/' -f3)
echo $KSVC_HOSTNAME
grpcurl -insecure -d '{"text": "How do you bake a cake?"}' -H "mm-model-id: Llama-2-7b-chat-hf" ${KSVC_HOSTNAME}:443 caikit.runtime.Nlp.NlpService/TextGenerationTaskPredict
