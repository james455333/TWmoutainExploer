// 帳號型態確認
function checkMbID(){
    let theMbIdObj = document.getElementById("memberId");
    let theMbIdObjVal = theMbIdObj.value;
    let theMbIdObjValLen = theMbIdObjVal.length;
    let sp = document.getElementById("mbIdsp");
    let flag = false;

    if(theMbIdObjVal == ""){
        sp.innerHTML = "請輸入帳號";
    } else if(theMbIdObjValLen >= 6){
        for(let i = 0; i < theMbIdObjValLen; i++){
            let re = new RegExp(/[A-Za-z]+[0-9]/);
            let re2 = new RegExp(/[0-9]+[A-Za-z]/);
            if(theMbIdObjVal.match(re)){
                flag = true;
            }else if(theMbIdObjVal.match(re2)){
                flag = true;
            }else{
                flag = false;
            }

            if(flag){
                sp.innerHTML = "正確";
            }else{
                sp.innerHTML = "錯誤，帳號必須包含大小寫英文與數字";
            }
        }
    }else{
        sp.innerHTML = "帳號長度最少6個字元";
    }

}


// 密碼型態確認
function checkPwd(){
    let thePwdObj = document.getElementById("password");
    let thePwdObjVal = thePwdObj.value;
    let thePwdObjValLen = thePwdObjVal.length;
    let sp = document.getElementById("pdsp");
    let flag = false;

    if(thePwdObjVal == ""){
        sp.innerHTML = "請輸入密碼";
    }else if(thePwdObjValLen >= 8){
        let re = new RegExp(/[A-Za-z0-9_]+[!@#$%^&*]/);
        let re2 = new RegExp(/[!@#$%^&*]+[A-Za-z0-9_]/);
        if(thePwdObjVal.match(re)){
            flag = true;
        }else if(thePwdObjVal.match(re2)){
            flag = true;
        }else{
            flag = false;
        }

        if(flag){
            sp.innerHTML = "正確";
        }else{
            sp.innerHTML = "錯誤，密碼請包含大小寫英文字母、數字與特殊字元_!@#$%^&*";
        }
    }else{
        sp.innerHTML = "密碼長度最少8個字元";
    }
}

// 密碼二次確認
function doublePwd(){
    let theDPwdObj = document.getElementById("pwdCheck");
    let theDPwdObjVal = theDPwdObj.value;
    let thePwd1Obj = document.getElementById("password");
    let thePwd1ObjVal = thePwd1Obj.value;
    let sp = document.getElementById("pwd2sp");
    let flag = false;

    if(theDPwdObjVal == ""){
        sp.innerHTML = "請再次輸入密碼";
    }else if(theDPwdObjVal == thePwd1ObjVal){
        flag = true;
    }else{
        flag = false;
    }

    if(flag){
        sp.innerHTML = "密碼相符";
    }else{
        sp.innerHTML = "密碼不相符";
    }

}


//確認姓名型態
function checkName(){
    let theNameObj = document.getElementById("name");
    let theNameObjVal = theNameObj.value;
    let theNameObjValLen = theNameObjVal.length;
    let sp = document.getElementById("nmsp");
    let flag = false;

    if(theNameObjVal == ""){
        sp.innerHTML = "請輸入姓名";
    }else if(theNameObjValLen >= 2){
        for(let i = 0; i < theNameObjValLen; i++){
            let ch = theNameObjVal.charCodeAt(i);
            if(ch >= 0x4e00 && ch <= 0x9fff){
                flag = true;
            }else{
                flag = false;
                break;
            }
        }

        if(flag){
            sp.innerHTML = "正確";
        }else{
            sp.innerHTML = "請輸入中文字元";
        }
    }else{
        sp.innerHTML = "姓名最少輸入兩個字元";
    }
}