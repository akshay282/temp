<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Fake Code Academy</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../resources/assets/css/styles.min.css">
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

<body onload="brython(1)">

    <header>
        <nav class="navbar navbar-dark navbar-expand-md bg-dark navigation-clean">
            <div class="container"><a class="navbar-brand" href="#">Fake Code Academy</a><button data-toggle="collapse"
                    class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span
                        class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item" role="presentation"><a class="nav-link active" href="#">First Item</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="#">Second Item</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="#">Third Item</a></li>
                        <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" data-toggle="dropdown"
                                aria-expanded="false" href="#">Dropdown </a>
                            <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation"
                                    href="#">First Item</a><a class="dropdown-item" role="presentation" href="#">Second
                                    Item</a><a class="dropdown-item" role="presentation" href="#">Third Item</a></div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container-fluid">
    <div class="row">
        <div class="col col-md-4" id="question">
            Important Question From Scott 
        </div>
        <div class="col col-md-8">
            <div class="row">
                <h2>Input:</h2>
            </div>
            <div class="row flex-grow-1" id="parent">
                <div id="editor">
# merge sort
def merge_sort(L):
    mid = int((len(L) - 1) / 2)  # calculate the value of middle index of array

    if len(L) > mid + 2:  # this loop will run when length of array is greater than 2
        a = merge_sort(L[0:mid])  # a is initialised with left side of the array taking reference as middle index
        b = merge_sort(L[mid:len(L)])  # b is initialised with right side of the array taking reference as middle index

    elif len(L) == 2:  # this loop will when length of array is equal to 2
        a = [L[0]]  # a is initiliased with the first element of array
        b = [L[1]]  # b is initiliased with the second element of array
    else:
        return L

    i = 0
    j = 0
    new = []
    while (i != len(a) or j != len(
            b)):  # this loop will run until i is not equal to the lenth of array a or j is equal to length of array b

        if i < len(a) and j < len(
                b):  # checking if value of i and j is lesser than length of array a and b respectively

            if a[i] < b[j]:  # if the element on the left side is lesser than the element on the right side
                new += [a[i]]  # then it will be directly added to the array new
                i += 1  # i is increased by 1

            else:
                new += [b[
                            j]]  # if element on the right side is lesser than the element on the left side then right side element is added to the array new
                j += 1  # j increased by 1

        elif i == len(a) and j != len(
                b):  # if i gets equal to the length of array a then all the elements of array b are directly added to the array new
            new += [b[j]]
            j += 1

        elif j == len(b) and i != len(
                a):  # if j gets equal to the length of array b then all the elements of array a are directly added to the array new
            new += [a[i]]
            i += 1

        else:
            break

    return new
                </div>
            </div>
            <div class="row justify-content-center">
                <button class="btn btn-primary runButtons" type="button" id="run">Run Code</button>
                <button class="btn btn-primary runButtons" type="button" id="test">Test Code</button>
                <button class="btn btn-primary runButtons" type="button" id="console" onclick="myFunction()">console Code</button>
            </div>
            <div class="row">
                <h2>Output:</h2>
                <div id="stdout">
                    <pre></pre>
                </div>
            </div>
        </div>
    </div>
</div>
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
    </script>
    <script type="text/python">from browser import document, alert, html,window
from io import StringIO
import sys
import traceback
#sys.stdout = document
inputBackup = sys.stdin

def runcode(ev):
    document["stdout"].clear()
    code = window.editor.getValue()
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
    code = window.editor.getValue() +"\n"+ "\n".join(open("question.txt").readlines())
    code = code.replace("\n","\n\t")
    #print(code) 
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
     }
    </script>
</body>

</html>