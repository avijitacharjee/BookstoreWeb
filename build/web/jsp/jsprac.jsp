<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #h {
        color: blue;
        font-size: 24px;
        background-color: black;
        align-items: flex-start;
        
    }
    .A {
        border-style: double;
        font-size: 24px;
        font-family: monospace;
        background-color: #FF00EE;
        width: 50%;
        float: left;
    }
    .B {
        border-style: dotted;
        font-family: cursive;
        font: cursive;
        font-size: 30px;
        background-color: #FAF;
        width: 50%;
        float: right;
    }
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JS practise</title>
    </head>
    <body>
        <h1>
            
            <script>
                function fun()
                {
                    document.write("HHello<br>");
                    this.b=function haha()
                    {
                        return "tor matha";
                    };
                }
                var a =new fun();
                document.write(a.b());
            </script>
            
        </h1>
        <p id="h" onmouseover="f()" onmouseout="g()">This DOM practice</p>
        <script>
            
            function f()
            {
                document.getElementById("h").style.color="red";
            }
            function g()
            {
                var v=document.getElementById("h");
                v.style.color="#FF00FF";
            }
        </script>
        <p class="A" onclick="toggleClass(this)">
            Avijit Acharjee
            <script type="text/javascript">
                var i=0;
                function toggleClass(e1)
                {
                    if(e1.className==="A"){
                        e1.className="B";
                    }
                    else
                    {
                        e1.className="A";
                    }
                    i++;
                    
                }
                document.write(i);
            </script>
        </p>
    </body>
</html>
