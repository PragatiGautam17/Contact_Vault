<%-- 
    Document   : allcss
    Created on : 12 Feb, 2023, 12:01:53 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CSS Page</title>
        <style type="text/css">
            
             #ul1 li{
                text-align: right;
               display:inline-block;
               color:white;
               font-size: 24px;
              
            }
             #ul2 li{
             
               display:inline-block;
               color:white;
               font-size: 25px;
               word-spacing: 20px;
              
            }
            #ul1{
                margin-left: 20px;
            }
            #ul2{
                  margin-left: 300px;
            }
            header{
                display:flex;
                 text-align:right;
                 background-color:black;
            }
            a{
                text-decoration: none;
                 color:white;
            }
            a:hover{
                text-decoration: underline;
               
            }
            .tx{
                text-align:center;
                border-radius:20px 20px 20px 20px;
                background:rgba(0,0,0,0.0);
                width:200px;
                height:30px;
                }
                .click{
                background:rgba(0,0,0,0);
                    border-radius:20px 20px 20px 20px;
                color:black;
                width:190px;
                height:30px;
                }


.click:hover{
     background:rgba(0,0,0);
                color:white;
}
.a,label{
    font-size: 20px;
}
 .option {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        background-color: palevioletred;
        max-width: 300px;
        margin: 0 auto;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .option select{
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
        </style>
    </head>
   
</html>
