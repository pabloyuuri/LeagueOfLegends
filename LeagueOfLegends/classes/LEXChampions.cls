public class LEXChampions {
    @AuraEnabled
    public static Champions getChampions(){
        Http http = new Http(); 
        HttpRequest request = new HttpRequest(); 
        request.setHeader('Content-Type', 'application/json'); // 
        request.setEndpoint('http://ddragon.leagueoflegends.com/cdn/11.2.1/data/pt_BR/champion.json'); // 3.Endereço REST API 
        request.setMethod('GET');
        HttpResponse response = http.send(request); 
        if (response.getStatusCode() == 200) { 
            return Champions.parse(response.getBody()); 
        }
        return null;    
    }
}