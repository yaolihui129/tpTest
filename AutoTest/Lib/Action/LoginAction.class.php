<?php
class LoginAction extends Action {
    
    public function index(){
        
        layout(false); // 临时关闭当前模板的布局功能       
        $this->display();
    }
    
    public function login(){
        $user = D('user')
        ->field("id,username,realname,usergp,filename")
        ->where(array('username'=>$_POST['username'],'password'=>md5($_POST['password'])))
        ->find();
        if ($user){
            session('[start]');
            $_SESSION=$user;
            $_SESSION['isLogin']=1;
            $_SESSION['testgp']=$user['usergp'];
            $_SESSION['filename']=$user['filename'];
            $this->redirect('Index/index');
        }else{
            // p($user);
            $this->error('用户登陆失败，请重新登陆！', "index");
        }
      
    }
    
    public function logout(){
        $username =$_SESSION['username'];
        $_SESSION = array();
        
        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }
        // 销毁sesstion
        session_destroy();
        
        $this->success("再见 {$username}, 退出成功!", "index");
    
    }
    
}