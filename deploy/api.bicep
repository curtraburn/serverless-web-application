@description('APIM name')
param apimName string = 'apim-serv-dev'

@description('Open API Definition URL')
param openApiUrl string = 'https://apim-serv-dev.azurewebsites.net/api/swagger.json'

@description('Static Website URL')
param originUrl string = 'https://serv-dev.azureedge.net'

@description('API friendly name')
param apimApiName string = '2do'

module apimOpenApi 'modules/apimOpenAPI.bicep' = {
  name: 'apimOpenAPI'
  params: {
    apimName: apimName
    openApiUrl: openApiUrl
    apiName: apimApiName
    originUrl: originUrl
  }
}
