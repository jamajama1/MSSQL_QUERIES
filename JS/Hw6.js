let banned = [11, 3434, 67453, 9];
let cardNum = "6724843711060148";



function validateCards(cardNum, banned) {
    let cardsRes = {};
    var valid = true;
    if(isValid(cardNum)){    
        for (var i = 0; i < banned.length; i++){
            var str = banned[i].toString();
            var count = str.length;
            var countMatch = 0;
            
                switch (count) {
                    case 0:
                        alert("Error! Empty banned list!")
                        end = true;
                        break;
                    case 1:
                        for (var j = 0; j < str.length; j++){
                            if (cardNum[j] == str[j]){
                                countMatch++;
                            }
                            if(countMatch == count){
                                valid = false;
                            }
                        }    
                        break;
                    case 2:
                        for (var j = 0; j < str.length; j++){
                            if (cardNum[j] == str[j]){
                                countMatch++;
                            }
                            if(countMatch == count){
                                valid = false;
                            }
                        }
                        break;
                    case 3:
                        for (var j = 0; j < str.length; j++){
                            if (cardNum[j] == str[j]){
                                countMatch++;
                            }
                            if(countMatch == count){
                                valid = false;
                            }
                        }
                        break;
                    case 4:
                        for (var j = 0; j < str.length; j++){
                            if (cardNum[j] == str[j]){
                                countMatch++;
                            }
                            if(countMatch == count){
                                valid = false;
                            }
                        }
                        break;
                    case 5:
                        for (var j = 0; j < str.length; j++){
                            if (cardNum[j] == str[j]){
                                countMatch++;
                            }
                            if(countMatch == count){
                                valid = false;
                            }                            
                        }
                }
            }

            if (valid){
                return cardsRes = {
                    card: cardNum, 
                    isValid:true, 
                    isAllowed:true
                };
            }
            else {
                return cardsRes = {
                    card: cardNum, 
                    isValid:false, 
                    isAllowed:false
                };
            }
        }
        else
        return alert("invalid card number!");
}
    


function isValid(cardNum){
    var double = [];
    var sum = 0;

    var temp = cardNum;
    for (var i = 0; i < cardNum.length -1; i++) {
        double.push(temp[i] *= 2);
    }
    for (var i = 0; i < double.length; i++) {
        sum += double[i];
    }

    if (sum%10 == cardNum[cardNum.length-1]){
       return true;
    }
    else {
        return false;
    }
}

console.log(validateCards(cardNum, banned));