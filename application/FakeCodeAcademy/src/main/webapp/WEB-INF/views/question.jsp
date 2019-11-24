<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>${question.get("Q_title")}</title>
    <link rel="stylesheet" href="../../resources/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../resources/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../../resources/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="../../resources/assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="../../resources/assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="../../resources/assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="../../resources/assets/css/styles.css">
	<style type="text/css" media="screen">
        #editor {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
        }

        #parent {

            width: 100%;
            height: 100%;
            display: inline-block;
            position: relative;
        }


        #stdout {
            border-style: solid;
            width: 100%;
            height: 500px;
            overflow: scroll;
        }

        #err {
            border-style: solid;
            border-color: black;
            color: red;
        }

        #stdout pre {
            white-space: pre-wrap;

        }

        .runButtons {
            margin-right: 5px;
        }
    </style>
    <!-- made with help of 
    https://repl.it/@WitherOrNot/online-python-interpreter
    -->
    <script type="text/javascript" src="https://cdn.rawgit.com/brython-dev/brython/stable/www/src/brython.js">
    </script>
    <script type="text/javascript" src="https://cdn.rawgit.com/brython-dev/brython/stable/www/src/brython_stdlib.js">
    </script>
</head>

<body class="text-center text-dark" onload="brython(1)">
    <nav class="navbar navbar-dark navbar-expand-md fixed-top text-white bg-dark text-capitalize text-center" data-aos="fade-up" data-aos-delay="950">
        <div class="container"><a class="navbar-brand" data-aos="fade-up" data-aos-delay="950" href="/">Fake Code Academy</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" data-aos="fade-up" data-aos-delay="950" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="/questionList"><i class="fa fa-question-circle"></i>&nbsp;Questions</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link text-white" href="/faq"><i class="fa fa-header"></i>&nbsp;FAQ</a></li>
                    <li class="nav-item" role="presentation"></li>
                </ul>
        </div>
        </div>
    </nav>
    <section class="homepage">
        <h1 data-aos="fade-up" data-aos-delay="1300" style="height: 70;">Question Time!</h1>
    </section>
    <div class="row">
        <div class="col-md-6 text-justify" data-aos="fade-up" data-aos-delay="1950">
            <div class="small">
                <h2 data-aos="fade-up" data-aos-delay="1950"><br>${question.get("Q_title")}<br><br></h2>
                <p> ${question.get("Q_text")} </p>
                
            </div>
        </div>
        <div class="col flash animated">
            <div class="small" >
                <h2 data-aos="fade-up" data-aos-delay="1950"><br>input:</h2>
                 <div id="editor">${question.get("Q_solution")}</div>
                 <div id="editor2" hidden="true">${question.get("Q_tests")}</div>
            </div>
        </div>
    </div>
    <section><button class="btn btn-primary runButtons" data-bs-hover-animate="flash" type="button" id="run">Run Code</button><button class="btn btn-primary runButtons" data-bs-hover-animate="flash" type="button" id="test">Test Code</button><button class="btn btn-primary runButtons" data-bs-hover-animate="flash"
            type="button" id="console" onclick="myFunction()">Console Code</button></section>
    <div class="row">
        <div class="col">
            <h2 data-bs-hover-animate="bounce"><br>Output<br><br></h2>
            <div id="stdout">
                    <pre></pre>
            </div>
        </div>
    </div>
    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 item text">
                        <h3>Fake Code Academy</h3>
                        <p>We're the future of Coding!, we are fake code academy!</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Fake Code Academy © 2019</p>
            </div>
        </footer>
    </div>
    <script src="../../resources/assets/js/jquery.min.js"></script>
    <script src="../../resources/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../../resources/assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://pagecdn.io/lib/ace/1.4.6/ace.js"
        integrity="sha256-CVkji/u32aj2TeC+D13f7scFSIfphw2pmu4LaKWMSY8=" crossorigin="anonymous"></script>
    <script src="https://pagecdn.io/lib/ace/1.4.5/ext-language_tools.js"
        integrity="sha256-wTJ28YyR8Fw1kZMGFZzHZzg/GL6jvC+Cx0fYFHyeylI=" crossorigin="anonymous"></script>
    <script>
        ace.require("ace/ext/language_tools");
        var editor = ace.edit("editor");
        editor.setTheme("ace/theme/idle_fingers");
        editor.session.setMode("ace/mode/python");
        editor.setOptions({
            enableBasicAutocompletion: true,
            enableSnippets: true,
            enableLiveAutocompletion: false
        });
        var editor2 = ace.edit("editor2");
        
    </script>
    <script type="text/python">from browser import document, alert, html,window
from io import StringIO
import sys
import traceback
#sys.stdout = document
inputBackup = sys.stdin

def runcode(ev):
    document["stdout"].clear()
    code = window.editor.getValue() + "\n" + window.editor2.getValue()
    s = StringIO()
    k = StringIO()
    sys.stdout = s
    if (ev.target.text == "Run Code"):
        sys.stdin = inputBackup
        
    else:
        sys.stdin = open("file.txt")
    try:
        exec(code)
    except:
        sys.stdout = k
        ecp = traceback.format_exc()
        print(ecp)
        
        document["stdout"] <= html.BR()
        document["stdout"] <= html.PRE(k.getvalue())

    e = s.getvalue()
    document["stdout"] <= html.BR()
    document["stdout"] <= html.PRE(e)


    
def test(ev):
    document["stdout"].clear()
    
    s = StringIO()
    k = StringIO()
    sys.stdout = s
    code = window.editor.getValue() + "\n" + window.editor2.getValue()
    print(code) 
    code = "try:\n" + code + "\nexcept Exception as e:\n\tprint(\"Error\", e)\n\tecp = traceback.format_exc()\n\tprint(ecp)"
    try:
        exec(code)
    except Exception as e:
        print(e)
        sys.stdout = k
        ecp = traceback.format_exc()
        print(ecp)
        
        document["stdout"] <= html.BR()
        document["stdout"] <= html.PRE(k.getvalue())

    e = s.getvalue()
    document["stdout"] <= html.BR()
    document["stdout"] <= html.PRE(e)

document["run"].bind('click',runcode)
document["test"].bind('click',test)
    </script>
    <script>
     function myFunction() {
            console.log(editor.getValue())
            console.log(editor2.getValue())
     }
    </script>
	
</body>

</html>