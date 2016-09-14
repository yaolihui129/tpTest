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
        $m=M('func');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $db=D('func');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }
    
    public function func(){
         /* 接收参数*/
        $proid=$_GET['proid'];
    	$gp=$_SESSION['testgp'];
         /* 实例化模型*/
        $m= D("program");
        $where=array("testgp"=>"$gp");
        $pros=$m->where($where)->select();
        $this->assign("pros",$pros);

        /* 实例化模型*/
        $s = D("prosys");
        $where=array("proid"=>"$proid");
        $data=$s->where($where)->select();
        $this->assign("data",$data);
        $this->assign('w',$where);
        
        $this->display();
        
    }
    
    
    public function range(){
        /* 接收参数*/
        $proid=$_GET['proid'];
    	$gp=$_SESSION['testgp'];
         /* 实例化模型*/
        $m= D("program");
        $where=array("testgp"=>"$gp");
        $pros=$m->where($where)->select();
        $this->assign("pros",$pros);

        /* 实例化模型*/
        $s = D("func");
        $where=array("fproid"=>"$proid");
        $data=$s->where($where)->select();
        $this->assign("data",$data);
        $where=array("proid"=>"$proid");
        $this->assign('w',$where);
        
        $this->display();
        
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('func');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }


}