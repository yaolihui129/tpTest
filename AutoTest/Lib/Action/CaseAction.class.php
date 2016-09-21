<?php

class CaseAction extends CommonAction {
    public function index(){
        /* 接收参数*/
         $prodid=$_GET['prodid'];
         $proid=$_GET['proid'];
         $sysid=$_GET['sysid'];
         $pathid=$_GET['pathid'];
         $funcid=$_GET['funcid'];
         /* 实例化模型*/
         $m=M('func');
         $where=array("pathid"=>$pathid);
         $data=$m->where($where)->select();
         $this->assign('data',$data);
    	 $m=M('case');
    	 $where=array("funcid"=>$funcid);
    	 $cases=$m->where($where)->select();
	     $this->assign('cases',$cases);
	     $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
	     $this->assign('w',$where);


	     $this->display();
    }

    public function add(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];

        /* 实例化模型*/
        $m=M('case');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));
        $this->assign("caozuo",PublicAction::editor("steps"));

        $this->display();
    }

    public function insert(){
        /* 实例化模型*/
        $m=D('case');
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

        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('case');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);
        $case=$m->find($id);
        $this->assign("case",$case);
        $this -> assign("state", formselect($case['state']));
        $this -> assign("fproid", proselect($case['fproid'],"fproid"));
        $this->assign("caozuo",PublicAction::editor("steps",$case['steps']));

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('case');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }


    }

    public function library(){
        /* 接收参数*/
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        $proid=$_GET['proid'];

        /* 实例化模型*/
        $m=D('program');
        $where=array("testgp"=>$testgp);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
//         $m=M('case');
        $m=M('system');
        $where=array("tp_case.fproid"=>$proid);
        $cases=$m
        ->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')
        ->join(' inner JOIN tp_case ON tp_func.id = tp_case.funcid')
        ->where($where)
        ->order("tp_system.sysno,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id,tp_case.sn,tp_case.id")
        ->select();
        $this->assign('cases',$cases);
        $where=array("proid"=>$proid);
        $this->assign('w',$where);

        $this->display();
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('case');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}