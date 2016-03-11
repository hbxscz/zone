/**
 * Created by figo on 16/2/21.
 */
CKEDITOR.replace( 'textarea1' );

$(document).ready(function(){
//    $('#grid').masonry({
//        // options...
//        itemSelector: '.card',
//        columnWidth: 200
//    });

    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
    $('.tooltipped').tooltip({delay: 50});
    $('#post').bind("click", function(){
        console.log(CKEDITOR.instances.textarea1.getData());
        $.ajax({
            type : "post",
            url : "/articles",
            contentType: 'application/json',
            data : JSON.stringify({
                "title" : $('#title').val(),
                "content" : CKEDITOR.instances.textarea1.getData(),
                "createdDate" : "2016-02-09"
            }),
            success : function() {
                location.reload();
            }
        });
    });
});



