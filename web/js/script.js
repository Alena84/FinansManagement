function failClick() {
    window.location.href = "./plugins/login/index.jsp";
    test();
    jQuery("<input type='hidden' name='signal' value='fail'/>").appendTo("form[name=payment_form]");
    jQuery("form[name=payment_form]").submit();
}

function submitForm(){
    var form = document.forms['reg_form'];
    window.location.href = "./plugins/login/index.jsp";
    if (checkForm(form)) {
        form.submit();
    }
}


$(function(){
    $('button').click(function(){
        test();
    });
});

function test(){
    alert('Ok');
};
