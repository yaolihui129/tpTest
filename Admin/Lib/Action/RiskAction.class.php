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
        $m=M('risk');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $db=D('risk');
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
        $m=M('risk');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}