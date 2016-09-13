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
        $m=M('rules');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $db=D('rules');
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
        $m=M('rules');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }


}