$(document).ready(function () {

        $('#myform').validate({
            rules: {
                name: {
                    required: true,
                    minlength: 3
                },
                email: {
                    required: true,
                    email: true
                },
                phone: {
                    required: true,
                    minlength: 10
                },
                files: {
                    required: true
                }
            },
            submitHandler: function (form) { 
                
                $.ajax({  
                url: "./upload.php",  
                type: "POST",  
                data: new FormData($('form')[0]),  
                contentType: false,  
                processData:false,  
                success: function(data)  
                {  
                     alert(data) ;
                     $('#myform')[0].reset();
                }  
           });
            }
        });

    });