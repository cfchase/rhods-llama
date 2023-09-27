# rhods-llama2


1. Run the script to install Kserve including its dependencies.
   ~~~
   export TARGET_OPERATOR=rhods
   ./scripts/install/kserve-install.sh
   ~~~

2. Deploy a sample Llama2 model.

   ~~~
   ./scripts/test/deploy-model.sh
   ~~~

2. Test the endpoint.

   ~~~
   ./scripts/test/grpc-call.sh
   ~~~
