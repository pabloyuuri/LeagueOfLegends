({
    getChampionsList : function(component,  event, helper) { // 3. Método que foi chamado pelo js do  controller
        
        
        let action = component.get("c.getChampions"); // 4. retorna o valor do getChampios que é um método da  classe do Apex chamada de  LEXChampions

        action.setCallback(this, function(response){  //5. Esperando resposta do servidor sobre o retorno do valor do método getChampions
            let state = response.getState(); // 6. valor da reposta do status do servidor 
            let responseValue = response.getReturnValue(); // 7. valor sobre o retorno do método getChampions no servidor
            console.log('oi:' + responseValue);

            if (state === "SUCCESS") { // 8. Se a resposta do servidor for true/sucess:
                let champions =  []; // 9. Array para armazenamento de objeto

                for (var i in responseValue.data) { // 10. estrutura de repetição: responseValue.data(pegando  valor vindo do response) e depositando na variável i
                    champions.push(responseValue.data[i]);  //11. adicionando elementos a array vazia que foi declarada fora da estrutura de repetição
                }

                component.set("v.champions", champions); // 12.  Passando todo valor que foi adicionado na variável declarada antes da estrutura de rep. no atributo champions(o atributo é um objeto)
                component.set("v.loading", false);
                console.log(champions); 

            }
        });

        $A.enqueueAction(action); // 1. adiciona chamada ao servidor.
    }
})