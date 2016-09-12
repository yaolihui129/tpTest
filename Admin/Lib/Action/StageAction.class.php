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
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('stage');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=D('stage');
        $id=$_GET['id'];

    }

    public function test(){

        $this->display();
    }


    public function autotest(){


        $this->display();
    }

    public function del(){
        $m=M('stage');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }


}