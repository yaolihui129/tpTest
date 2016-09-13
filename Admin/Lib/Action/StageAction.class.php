<?php

class StageAction extends CommonAction {
    public function index(){

    	 $gp=$_SESSION['usergp'];
        //获取项目列表
        $pros= D("program")
        ->where(array("testgp"=>"$gp"))
        ->select();
        $this->assign("pros",$pros);

        //获取里程碑数据
        $proid=$_GET['proid'];
        $stages= D("stage")
        ->where(array("proid"=>"$proid"))
        ->select();
        $this->assign("stages",$stages);


	     $this->display();
    }

    public function add(){
        $this->display();
    }

    public function insert(){

        $m=D('stage');

        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
           $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }

    public function mod(){
        $m=M('stage');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $db=D('stage');
    $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function test(){

        $this->display();
    }


    public function autotest(){


        $this->display();
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('stage');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }


}