<?php

class FuncAction extends CommonAction {
    public function index(){
        //获取路径
        $sysid=$_GET['sysid'];
        $pathes= D("path")
        ->order("sn")
        ->where(array("sysid"=>"$sysid","state"=>"正常"))
        ->select();
        $this->assign("pathes",$pathes);

        //获取功能
        $pathid=$_GET['pathid'];
        $funcs= D("func")
        ->order("sn")
        ->where(array("pathid"=>"$pathid"))
        ->select();
        $this->assign("funcs",$funcs);
	     $this->display();
    }


    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('func');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('func');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=D('func');
        $id=$_GET['id'];

    }

    public function del(){
        $m=M('func');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }


}