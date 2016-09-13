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
        $m=M('scene');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $db=D('scene');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function library(){
        $this->display();
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('scene');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}