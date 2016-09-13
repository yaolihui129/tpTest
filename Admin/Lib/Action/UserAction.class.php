<?php

class UserAction extends CommonAction {
    public function index(){

    	 $m=M('user');
    	 $arr=$m->select();
	     $this->assign('data',$arr);
	     $this->display();
    }

    public  function add(){
        $m=M('user');
        $arr=$m->select();
        $this->assign('data',$arr);

        $d=M('dict');
        /* 取分组字典 */
        $where=array("type"=>"testgp","state"=>"正常");
        $dgps=$d->field('k,v',false)->where($where)->select();
        $this->assign('dgps',$dgps);

        /* 取职位字典 */
        $where=array("type"=>"position","state"=>"正常");
        $posies=$d->field('k,v',false)->where($where)->select();
        $this->assign('posies',$posies);

        $this->display();


    }

    public function insert(){
       // var_dump($_POST);
        $m=D('user');
        $_POST['password']=md5("123456");
        $_POST['state']="在职";
        $_POST['email']=$_POST['username']."@yiche.com";
        //$_POST['adder']=$_SESSION['realname'];
       // $_POST['moder']=$_SESSION['realname'];
       // $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
           $this->success("添加成功");
        }else{
            $this->error('用户注册失败');
        }

        /*
        if ($m->create()){
            $count=$m->add($_POST);
            if ($count){
                $this->success("添加成功");
            }else{
                $this->error("添加失败");
            }
        }else{
            $this->error($m->getError());
        }*/


    }

    public function mod(){
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $m=M('user');

        $arr=$m->select();
        $this->assign('data',$arr);

        $arr=$m->find($id);
        $this->assign('user',$arr);

        $d=M('dict');
        /* 取分组字典 */
        $where=array("type"=>"testgp","state"=>"正常");
        $dgps=$d->field('k,v',false)->where($where)->select();
        $this->assign('dgps',$dgps);

        /* 取职位字典 */
        $where=array("type"=>"position","state"=>"正常");
        $posies=$d->field('k,v',false)->where($where)->select();
        $this->assign('posies',$posies);


//         dump($dgps);
        $this->display();
    }

    public function update(){

        $db=D('user');

        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }

    public function setpw(){
        $m=D('user');
        $arr=$m->find($_GET['id']);
        $this->assign('user',$arr);
        $this->display();
    }

    public function set(){
        $db=M('user');
        $_POST['password']=md5(123456);
        var_dump($_POST);

        if ($db->save($_POST)){
            $this->success("密码已重置为：123456！");
        }else{
            $this->error("重置失败！");
        }

    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
   	    $m=M('user');

   	    $count =$m->delete($id);
   	    if ($count>0) {
   		    $this->success('删除成功');
   	    }else{
   		    $this->error('删除失败');
     	}
   }



}