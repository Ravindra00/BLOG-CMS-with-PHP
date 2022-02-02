<?php 
    session_start();
    include('../config/constants.php');
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Panel </title>
        
        <link rel="stylesheet" type="text/css" href="http://localhost:81/asmtblog/assets/css/style.css" />
    </head>
    
    <body>
    
    
    <!-- Main Content Starts Here -->
    <section class="main">
        <?php
            if(isset($_SESSION['login_fail']))
            {
                echo $_SESSION['login_fail'];
                unset($_SESSION['login_fail']);
            }
        ?>
        
        <form method="post" action="">
            <fieldset>
                <legend>Login Here</legend>
                Username: <input type="text" name="username" /><br />
                Password: <input type="password" name="password" /><br />
                <input type="submit" name="submit" value="Log In" class="btn-submit" />
                
            </fieldset>
        </form>
    </section>
    <!-- Main Content Starts Here -->
    
    <?php 
        if(isset($_POST['submit']))
        {
            //echo "Button Clicked";
            //Getting username and pssword from Login Form
            $username = $_POST['username'];
            $password = $_POST['password'];
            
            //DAtabase Connection 
            $conn = mysqli_connect(LOCALHOST,USERNAME,PASSWORD) or die(mysqli_error());
            //DAtabase Selection
            $db_select = mysqli_select_db($conn,DBNAME) or die(mysqli_error($conn));
            //SQL Query
            $query = "SELECT * FROM tbl_users WHERE 
                username ='$username' AND 
                password = '$password' AND 
                is_active = 1
            ";
            //Execute Query
            $res = mysqli_query($conn,$query);
            if($res==true)
            {
                $count_rows = mysqli_num_rows($res);
                if($count_rows>0)
                {
                    //User Logged In
                    //echo "Login Successful";
                    //SEt SEssion Message
                    $_SESSION['login_success']="Login Successful";
                    $_SESSION['user'] = $username;
                    //Redirect to Home Page
                    header('location:'.SITEURL.'admin/index.php');
                }
                else
                {
                    //Failed to Login
                    //echo "Failed to Login";
                    $_SESSION['login_fail']="Failed to Login";
                    //Redirect to Home Page
                    header('location:'.SITEURL.'admin/login.php');
                }
            }
        }
    ?>
        
    <!-- Footer Starts Here -->
    <footer>
        &copy; 2018, PHP BLOG.
    </footer>
    <!-- Footer Starts Here -->
    
    </body>
</html>