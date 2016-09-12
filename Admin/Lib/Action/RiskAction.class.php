<?php

class RiskAction extends CommonAction {
    public function index(){
        $gp=$_SESSION['usergp'];
        //获取项目列表
        $pros= D("program")
        ->where(array("testgp"=>"$gp"))
        ->select();
        $this->assign("pros",$pros);

        //获取项目风险数据
        $proid=$_GET['proid'];
        $risks= D("risk")
        ->where(array("proid"=>"$proid"))
        ->select();
        $this->assign("risks",$risks);


	     $this->display();
    }

    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('risk');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('risk');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=D('risk');
        $id=$_GET['id'];

    }

    public function del(){
        $m=M('risk');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}