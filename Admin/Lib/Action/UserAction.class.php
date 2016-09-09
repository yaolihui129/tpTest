<?php

class UserAction extends Action {
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
        $this->display();
    }

    public function insert(){
       // var_dump($_POST);
        $m=M('user');
        $_POST['password']=md5("123456");
        $_POST['state']="在职";
        $_POST['email']=$_POST['username']."@yiche.com";
        $_POST['adder']='yaolh';
        $_POST['moder']='yaolh';
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($m->create()){
            $count=$m->add($_POST);
            if ($count){
                $this->success("添加成功");
            }else{
                $this->error("添加失败");
            }
        }else{
            $this->error($m->getError());
        }


    }

    public function mod(){
        $id=$_GET['id'];
        $m=M('user');

        $arr=$m->select();
        $this->assign('data',$arr);

        $arr=$m->find($id);
        $this->assign('user',$arr);
        $this->display();
    }

    public function update(){
        $_POST['moder']='yao';
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        $db=M('user');
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

        $arr['id']=$_POST['id'];
        $arr['password']=md5($_POST['password']);
        var_dump($arr);
        $db=M('user');
        if ($db->save($arr)){
            $this->success("密码已重置为：123456！");
        }else{
            $this->error("重置失败！");
        }

    }

    public function del(){
   	    $m=M('user');
   	    $id=$_GET['id'];
   	    $count =$m->delete($id);
   	    if ($count>0) {
   		    $this->success('删除成功');
   	    }else{
   		    $this->error('删除失败');
     	}
   }



}