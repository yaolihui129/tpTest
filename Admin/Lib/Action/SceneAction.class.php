<?php

class SceneAction extends CommonAction {
    public function index(){
        $proid=$_GET['proid'];
        $gp=$_SESSION['usergp'];
        //获取项目列表
        $pros= D("program")
        ->where(array("testgp"=>"$gp"))
        ->select();
        $this->assign("pros",$pros);
        $this->assign(array("proid"=>"$proid"));
        //获取项目场景数据
        $scenes= D("scene")
        ->where(array("proid"=>"$proid"))
        ->select();
        $this->assign("scenes",$scenes);
	     $this->display();
    }

    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('scene');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('scene');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=D('scene');
        $id=$_GET['id'];

    }

    public function library(){
        $this->display();
    }

    public function del(){
        $m=M('scene');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}