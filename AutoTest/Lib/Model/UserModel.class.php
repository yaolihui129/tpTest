<?php
class UserModel extends Model{

    /*
     * 自动完成
     */
    protected $_auto=array(

        array('adder','getAdder',1,'callback'),
        array('moder','getAdder',3,'callback'),
        array('updateTime','time',3,'function'),

    );

 /*
  * 自动验证
  */
    protected $_validate=array(
//         array('code','require','验证码必须填写!'),
//         array('code','checkCode','验证码错误!',0,'callback',1),
        array('username','require','用户必须填写!'),
        array('username','','用户已经存在',0,'unique',1),
        array('username','/^\w{4,}$/','用户名必须6个字母以上',0,'regex',1),
       // array('repassword','password','确认密码不正确',0,'confirm'),
    );

    /*
     * callback函数
     */
    protected function getAdder(){
        return $_SESSION['realname'];
    }


    protected function checkCode($code){
        if(md5($code)!=$_SESSION['code']){
            return false;
        }else{
            return true;
        }
    }
}