<?php
class ProductModel extends Model{

    protected $_auto=array(

        array('adder','getAdder',1,'callback'),
        array('moder','getAdder',3,'callback'),
        array('updateTime','time',3,'function'),

    );

    protected function getAdder(){
        return $_SESSION['realname'];
    }


    protected $_validate=array(
           array('product','require','产品必须填写!'),
           array('product','','产品已经存在',0,'unique',1),
           array('short','require','简称必须填写!'),
           array('short','','简称已经存在',0,'unique',1),

    );
    protected function checkCode($code){
        if(md5($code)!=$_SESSION['code']){
            return false;
        }else{
            return true;
        }
    }
}