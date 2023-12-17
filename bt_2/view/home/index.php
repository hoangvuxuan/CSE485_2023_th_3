<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
    .header {
        box-shadow: 5px 5px 10px 0px #ccc;
        display: flex;
        background-color: #7aff79;
    }

    .header_title {
        font-weight: 700;
        font-size: 24px;
        display: block;
        padding: 10px 20px;
    }

    .header_title:hover {
        background-color: #7af000;
    }

    .navbar {
        display: flex;
        justify-content: center;
    }

    .col-sm-3 {
        margin: 20px;
        border: 1px solid #ccc;
        width: 10%;
        padding: 0px;
    }

    .header_link {
        text-align: center;
        border: none;
        width: 100%;
    }
</style>
</head>
<body>
    <header>
        <div class="header">
            <div>
                <a href="#" class="header_title">ADMIN</a>
            </div>

            <div>
                <a href="#" class="header_title">CLIENT PAGE</a>
            </div>
        </div>

        <div>
            <div class="row navbar">
                <div class="col-sm-3">
                    <button class = "header_link" onclick="load_table('courses')">
                            <h3>courses</h3>
                            <h4>0</h4>
                    </button>
                </div>

                <div class="col-sm-3">
                    <button class = "header_link" onclick="load_table('users')">
                            <h3>users</h3>
                            <h4>0</h4>
                    </button>
                </div>

                <div class="col-sm-3">
                    <button class = "header_link" onclick="load_table('lessons')">
                            <h3>lessons</h3>
                            <h4>0</h4>
                    </button>
                </div>

                <div class="col-sm-3">
                    <button class = "header_link" onclick="load_table('materials')">
                            <h3>materials</h3>
                            <h4>0</h4>
                    </button>
                </div>

                <div class="col-sm-3">
                    <button class = "header_link" onclick="load_table('questions')">
                            <h3>questions</h3>
                            <h4>0</h4>
                    </button>
                </div>

                <div class="col-sm-3">
                    <button class = "header_link" onclick="load_table('quizzes')">
                            <h3>quizzes</h3>
                            <h4>0</h4>
                    </button>
                </div>

                <div class="col-sm-3">
                    <button class = "header_link" onclick="load_table('options')">
                            <h3>options</h3>
                            <h4>0</h4>
                    </button>
                </div>
            </div>
        </div>
        
    </header>

    <main>
        

        <div class="container">
            <h3 class ="text-center text-success text-uppercase my-3" id="id_title">user</h3>

            <div id="show"></div>
        </div>

    
        
    </main>

<script src="./view/home/action.js"></script>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>