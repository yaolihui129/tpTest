<?php

class UserAction extends Action {
    public function index(){

    	 $m=M('user');
    	 $arr=$m->select();
	     $this->assign('data',$arr);
	     $this->display();
    }

    public  function add(){
        $this->display();
    }

    public function insert(){
        $_POST['password']=md5("123456");
        $_POST['state']="在职";
        $_POST['email']=$_POST['username']."@yiche.com";
        $_POST['adder']='yaolh';
        $_POST['moder']='yaolh';
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        $m=M('user');
        $count=$m->insert($_POST);
        if ($count>0){
            $this->sucess("ok",'index');
        }else{
            $this->error("X");
        }
    }

    public function mod(){
        $id=$_GET['id'];
        $m=M('user');
        $arr=$m->find($id);
        $this->assign('data',$arr);
        $this->display();
    }

    public function update(){
        $_POST['moder']='yaolh';
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        $db=M('user');
        if ($db->update($_POST)){
            $this->success("修改成功！","index");
        }else{
            $this->error("修改失败！");
        }
    }

    public function setpw(){
        $m=D('user');
        $users= $m->select();
        $this->assign("users",$users);
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
        $this->display();
    }

    public function del(){
   	    $m=M('user');
   	    $id=$_GET['id'];
   	    $count =$m->delete($id);
   	    if ($count>0) {
   		    $this->success('数据删除成功');
   	    }else{
   		    $this->error('数据删除失败');
     	}
   }



}