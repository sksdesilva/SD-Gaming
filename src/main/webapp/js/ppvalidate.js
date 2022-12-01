var check = function() {
    if (document.getElementById('password').value ==
      document.getElementById('password2').value) {
      document.getElementById('msg').style.color = 'blue';
      document.getElementById('msg').innerHTML = 'Passwords matching';
    } else {
      document.getElementById('msg').style.color = 'red';
      document.getElementById('msg').innerHTML = 'Passwords not matching';
    }
  }