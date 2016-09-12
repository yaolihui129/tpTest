<?php

class PathAction extends CommonAction {
    public function index(){

        //系统数据
        $prodid=$_GET['prodid'];
        $syses= D("system")
        ->order("sysid")
        ->where(array("prodid"=>"$prodid","state"=>"正常"))
        ->select();
        $this->assign("syses",$syses);
        //路径数据
        $sysid=$_GET['sysid'];
        $pathes= D("path")
        ->order("sn")
        ->where(array("sysid"=>"$sysid","state"=>"正常"))
        ->select();
        $this->assign("pathes",$pathes);




	     $this->display();
    }



    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('path');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('path');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=M('path');
        $id=$_GET['id'];

    }

    public function del(){
        $m=D('path');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}