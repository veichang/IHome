<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>3D家居</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" /> 
        <script language="javascript" type="text/javascript" src="../js/jquery-1.11.1.js"></script>
        <script type="text/javascript" src="../js/login.js"></script>
    </head>
    <body class="index">
    <form action="login.do">
        <div class="login_box">
            <table>
                <tr>
                    <td class="login_info">用户名：</td>
                    <td colspan="2"><input id="name" name="name" type="text" class="width150" placeholder="公共用户名：admin"/></td>
                    <td class="login_error_info"><span class="required">30长度的字母、数字和下划线</span></td>
                </tr>
                <tr>
                    <td class="login_info">密码：</td>
                    <td colspan="2"><input id="passport" name="passport" type="password" class="width150" placeholder="公共账户密码：admin"/></td>
                    <td><span class="required">30长度的字母、数字和下划线</span></td>
                </tr>
                <tr>
                    <td class="login_info">验证码：</td>
                    <td class="width70"><input name="" type="text" class="width70" /></td>
                    <td><img src="../images/valicode.jpg" alt="验证码" title="点击更换" /></td>  
                    <td><span class="required">验证码错误</span></td>              
                </tr>            
                <tr>
                    <td></td>
                    <td class="login_button" colspan="2">
                        <img src="../images/login_btn.png" onclick="javascript:btsubmit();"/>&nbsp;&nbsp;&nbsp;&nbsp;<a href="../user/addUser.do"><img src="../images/regi_btn.png" /></a>
                
                    </td>    
                    <td><span class="required">用户名或密码错误，请重试</span></td>                
                </tr>
            </table>
        </div>
        </form>
    </body>
</html>
