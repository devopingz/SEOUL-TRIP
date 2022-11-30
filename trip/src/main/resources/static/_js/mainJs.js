function loginCheck(){
	
    if(document.getElementById('login_id').value.length == 0){
        alert("아이디를 입력해주세요.");
        document.getElementById('login_id').focus();
        return false;
    }

    if(document.getElementById('login_pw').value.length == 0){
        alert("비밀번호를 입력해주세요.");

        document.getElementById('login_pw').focus();
        return false;
    }
    
    function setCookie(name, value, expiredays) //쿠키 저장함수
    {
        var todayDate = new Date();
        todayDate.setDate(todayDate.getDate() + expiredays);
        document.cookie = name + "=" + escape(value) + "; path=/; expires="
            + todayDate.toGMTString() + ";"
    }

    if(document.getElementById('remember_id').checked == true){
        setCookie("id", document.getElementById('login_id').value,7);
    }else{
        setCookie("id", document.getElementById('login_id').value,0);
    }
    return true;
}

function pw2Check(){
    var pw = document.joinFrm.password.value;
    var re_pw = document.joinFrm.password2.value;
    if(pw == re_pw){
        document.joinFrm.check_pw2.value = "y";
        document.getElementById('validate_pw2').innerText = "";
    }else{
        document.joinFrm.check_pw2.value = "";
        document.getElementById('validate_pw2').innerText = "비밀번호가 일치하지 않습니다. ";
    }
}

function joinCheck(){
	
    var id = document.joinFrm.id;
    var pw1 = document.joinFrm.pw1
    var pw2 = document.joinFrm.pw2;
    var name = document.joinFrm.name;
    var nickname = document.joinFrm.nickname;
    var birth = document.joinFrm.birth;
    var gender = document.joinFrm.gender;
    var email = document.joinFrm.email;
    var check = document.joinFrm.check_rule;

    if(id.value.length ==0){
        alert("아이디를 입력해주세요.");
        id.focus();
        return false;
        }
     if(pw1.value.length ==0){
        alert("비밀번호를 입력해주세요.");
        pw1.focus();
        return false;
        }
     if(pw2.value.length ==0){
        alert("비밀번호 확인을 입력해주세요.");
        pw2.focus();
        return false;
        }
     if(pw2.value != pw1.value){
        alert("비밀번호가 일치하지 않습니다.");
        return false;
        }       
     if(name.value.length ==0){
        alert("이름을 입력해주세요.");
        name.focus();
       return false;
       }
     if(nickname.value.length ==0){
        alert("닉네임을 입력해주세요.");
        nickname.focus();
        return false;
        }
      if(birth.value.length ==0){
        alert("생년월일을 입력해주세요.");
        birth.focus();
        return false;
        }   
     if(gender.value == ""){
        alert("성별을 선택해주세요.");
        gender.focus();
        return false;
        }
     if(email.value == ""){
        alert("이메일을 입력해주세요.");
        email.focus();
        return false;
        }
     if(phone.value.length==0){
        alert("전화번호를 입력해주세요.");
        phone.focus();
        return false;
        }     
}

function myinfoCheck(){
	
    var pw1 = document.myinfoFrm.pw1
    var pw2 = document.myinfoFrm.pw2;
    var nickname = document.myinfoFrm.nickname;
    var birth = document.myinfoFrm.birth;
    var gender = document.myinfoFrm.gender;
    var email = document.myinfoFrm.email;

     if(pw1.value.length ==0){
        alert("비밀번호를 입력해주세요.");
        pw1.focus();
        return false;
        }
     if(pw2.value.length ==0){
        alert("비밀번호 확인을 입력해주세요.");
        pw2.focus();
        return false;
        }
     if(pw2.value != pw1.value){
        alert("비밀번호가 일치하지 않습니다.");
        return false;
        }       
     if(nickname.value.length ==0){
        alert("닉네임을 입력해주세요.");
        nickname.focus();
        return false;
        }
      if(birth.value.length ==0){
        alert("생년월일을 입력해주세요.");
        birth.focus();
        return false;
        }   
     if(gender.value == ""){
        alert("성별을 선택해주세요.");
        gender.focus();
        return false;
        }
     if(email.value == ""){
        alert("이메일을 입력해주세요.");
        email.focus();
        return false;
        }
     if(phone.value == ""){
        alert("전화번호를 입력해주세요.");
        phone.focus();
        return false;
        }       
}

function BoardMakeCheck(){
	
    var title = document.board.title;
    var id = document.board.id;
    var content = document.board.content;
    var pw = document.board.password;


     if(title.value.length ==0){
        alert("제목을 입력해주세요.");
        title.focus();
        return false;
        }
     if(id.value.length ==0){
        alert("로그인 후 이용가능합니다.");
        return false;
        }
      if(content.value.length ==0){
        alert("내용을 입력해주세요.");
        content.focus();
        return false;
        }   
      if(pw.value.length ==0){
        alert("비밀번호를 입력해주세요.");
        pw.focus();
        return false;
        }    
}

function boardDeleteCheck(){
	
    var pw1 = document.board.password;
	var pw2 = document.board.pw;
	
	 if(pw1.value.length==0){
        alert("비밀번호를 입력해주세요.");
        return false;
     }
     if(pw1.value != pw2.value){
        alert("비밀번호가 틀립니다.");
        return false;
     }
                   
}

function member_delete(frm) {

 	var pw1 = document.myinfoFrm.pw1
    var pw2 = document.myinfoFrm.pw2;
    var nickname = document.myinfoFrm.nickname;
    var birth = document.myinfoFrm.birth;
    var gender = document.myinfoFrm.gender;
    var email = document.myinfoFrm.email;

     if(pw1.value.length ==0){
        alert("비밀번호를 입력해주세요.");
        pw1.focus();
        return false;
        }
     if(pw2.value.length ==0){
        alert("비밀번호 확인을 입력해주세요.");
        pw2.focus();
        return false;
        }
     if(pw2.value != pw1.value){
        alert("비밀번호가 일치하지 않습니다.");
        return false;
        }       
     if(nickname.value.length ==0){
        alert("닉네임을 입력해주세요.");
        nickname.focus();
        return false;
        }
      if(birth.value.length ==0){
        alert("생년월일을 입력해주세요.");
        birth.focus();
        return false;
        }   
     if(gender.value == ""){
        alert("성별을 선택해주세요.");
        gender.focus();
        return false;
        }
     if(email.value == ""){
        alert("이메일을 입력해주세요.");
        email.focus();
        return false;
        }
     if(phone.value == ""){
        alert("전화번호를 입력해주세요.");
        phone.focus();
        return false;
        }      
	
 frm.action='deleteMember';
 frm.submit();
 return false;
}





