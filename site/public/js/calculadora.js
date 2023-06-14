function calcular() {

    var gold = gold_atual.value;
    var tempo = inp_tempo.value;
    var ondas = ondas_atual.value;
    var abates = inp_abate.value;
    var assist = inp_assist.value;

    var catapa = 0;    
    var ValorCatapa = 60 
    var goldtotal = 0;

    if (gold == "" || ondas == "" || abates == "") {
        alert ("Preencha os campos!")

    } else {

        for (var contagem = 1; contagem <= ondas; contagem += 1){
        
            if (contagem % 3 == 0) {
                catapa += 1;
            }
        } 


        var GoldAbate = abates * 300
        var GoldAssist = assist * 150
        var GoldOndas = 105 + (75 * catapa);
        var GoldTempo = 122.4 * tempo
        var somaTotal = GoldAbate + GoldOndas + GoldTempo + GoldAssist

        span1.innerHTML = `Com a duração de ${tempo} minutos, você concluiu ${gold} de ouro armazenado, coletou ${ondas} ondas de minions, teve ${abates} abates e ${assist} assistência. Com isso, você obteve ${somaTotal} de ouro.`

    }

}
