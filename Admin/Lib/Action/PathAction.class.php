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
        $m=M('path');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $db=M('path');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D('path');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}