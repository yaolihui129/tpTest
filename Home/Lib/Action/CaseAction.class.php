<?php
class CaseAction extends Action {

    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        $testgp=$_GET['testgp'];
        /* 实例化模型*/
        $m=M('func');
        $where=array("pathid"=>$pathid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $m=M('case');
        $where=array("funcid"=>$funcid);
        $cases=$m->where($where)->select();
        $this->assign('cases',$cases);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid,"testgp"=>$testgp);
        $this->assign('w',$where);


        $this->display();
    }



    public function procase(){
        /* 接收参数*/
        $testgp=$_GET['testgp'];
        $proid=$_GET['proid'];

        /* 实例化模型*/
        $m=M('system');
        $where=array("tp_case.fproid"=>$proid);
        $cases=$m
        ->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')
        ->join(' inner JOIN tp_case ON tp_func.id = tp_case.funcid')
        ->where($where)
        ->order("tp_system.system,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id,tp_case.sn,tp_case.id")
        ->select();
        $this->assign('cases',$cases);
        $where=array("proid"=>$proid,"testgp"=>$testgp);
        $this->assign('w',$where);
// dump($cases);
        $this->display();

    }



    public function update(){
        /* 实例化模型*/
        $db=D('case');
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }


    }


}