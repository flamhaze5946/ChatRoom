$(function()
{
    $.ajax(
        {
            url:"/ChatServlet",
            data:
            {
                method:"addChatMessage",
                msg:$("#chatInput").val().substr(0, $("#chatInput").val().lastIndexOf('\n'))
            },
            type:"post",
            dataType:"text",
            async:false,
            cache:false,
            success: function (result)
            {
                $("#chatSession").val(result);
                $("#chatInput").val("");
                $("#chatSession").scrollTop($("#chatSession")[0].scrollHeight);
            }
        }
    );


    $("#chatInput").keyup(function(e)
    {
        inputEnter(e);
    });

    setInterval(function()
    {
        $.ajax(
            {
                url:"/ChatServlet",
                data:
                {
                    method:"addChatMessage",
                    msg:""
                },
                type:"post",
                dataType:"text",
                async:true,
                cache:false,
                success: function (result)
                {
                    $("#chatSession").val(result);
                    $("#chatSession").scrollTop($("#chatSession")[0].scrollHeight);
                }
            });
    }, 5000)
});

function inputEnter(e)
{
    if (e.keyCode == 13)
    {
        $.ajax(
            {
                url:"/ChatServlet",
                data:
                {
                    method:"addChatMessage",
                    msg:$("#chatInput").val().substr(0, $("#chatInput").val().lastIndexOf('\n'))
                },
                type:"post",
                dataType:"text",
                async:false,
                cache:false,
                success: function (result)
                {
                    $("#chatSession").val(result);
                    $("#chatInput").val("");
                    $("#chatSession").scrollTop($("#chatSession")[0].scrollHeight);
                }
            }
        );
    }

}