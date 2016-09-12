<?php

class RulesAction extends CommonAction {
    public function index(){
        $prodid=$_GET['prodid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcs= D("func")
        ->where(array("pathid"=>"$pathid"))
        ->select();
        $this->assign("funcs",$funcs);

        $funcid=$_GET['funcid'];
        $rules= D("rules")
        ->where(array("funcid"=>"$funcid"))
        ->select();
        $this->assign("rules",$rules);
	     $this->display();
    }


    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('rules');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('rules');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=D('rules');
        $id=$_GET['id'];

    }

    public function del(){
        $m=M('rules');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }


}