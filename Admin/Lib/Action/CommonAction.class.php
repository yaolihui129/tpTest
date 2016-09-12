<?php
class CommonAction extends Action{
    Public function _initialize(){
        // 初始化的时候检查用户权限
        if(!isset($_SESSION['isLogin']) || $_SESSION['username']==''){
            $this->redirect('Login/index');
        }
    }
}











?>