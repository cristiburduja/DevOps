def buildApp()
{

	echo "build with groovy"

}

def deployApp(){

	echo "deploy version ${params.VERSION}"  // ai access la env params in groovy
	echo "Deploying to ${ENV}"
}
return this