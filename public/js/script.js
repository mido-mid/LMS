$(function(){

    $(".videos .video a").on('click', function(){

        let link = $(this).attr('href');

        $(".modal div .modal-content .modal-body iframe").attr('src',link);

    });

    $('#showvideo').on('hide.bs.modal', function(e) {
        var $if = $(e.delegateTarget).find('iframe');
        var src = $if.attr("src");
        $if.attr("src", '/empty.html');
        $if.attr("src", src);
    });



    $(".container .quizzes .disabled a").on('click',function(e){

        e.preventDefault();

    });


    $("#upload_btn").on('click',function(e){

        e.preventDefault();
        if( $("#upload_btn").attr('class') != 'btn btn-success save_image')
        {
            $("#image_file").trigger('click');
        }
        else{

            $("#form").submit();
        }

    });

    $("#image_file").on('change',function(){

        let image_value = $(this).val();

            $("#upload_btn").html("<i class='fas fa-cloud-upload-alt'></i> save")
            $("#upload_btn").attr('class','btn btn-success save_image')
            $("#upload_btn").css('width','100px')
    });


    $("#form").on('submit',function(e){


        e.preventDefault();


        $.ajax({

            url: 'profile',
            type: 'POST',
            data: new FormData(this),
            dataType: 'JSON',
            cache: false,
            processData: false,
            contentType: false,
            success:function(data){
                $('#message').css('display','block');
                $('#message').text(data.message);
                $('#uploaded_image').html(data.uploaded_image);
            },
        });

    });



    $("#user-form").on('submit',function(e){



        e.preventDefault();


        $.ajax({

            url: 'profile',
            type: 'POST',
            data: new FormData(this),
            dataType: 'JSON',
            cache: false,
            processData: false,
            contentType: false,
            success:function(data){
                $('#name').text(data.profilename);
                $('#email').text(data.profileemail);
                $('#message').css('display','block');
                $('#message').text(data.message);
                $('#error').css('display','none');
            },
            error:function(){
                $('#message').css('display','none');
                $('#error').css('display','block');
            }
        });

    });


    $("#contact-form").on('submit',function(e){



        e.preventDefault();

        $.ajax({

            url: 'contact',
            type: 'POST',
            data: new FormData(this),
            dataType: 'JSON',
            cache: false,
            processData: false,
            contentType: false,
            success:function(data){
                $('#name').text(data.profilename);
                $('#email').text(data.profileemail);
                $('#message').css('display','block');
                $('#message').text(data.message);
                $('#error').css('display','none');
            },
            error:function(){
                $('#message').css('display','none');
                $('#error').css('display','block');
            }
        });

    });


});


