<?php
class FuncAction extends Action {


    public function func(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $testgp=$_GET['testgp'];

        /* 实例化模型*/
        $s = D("prosys");
        $where=array("tp_prosys.proid"=>"$proid");
        $data=$s->where($where)
        ->join('tp_system ON tp_prosys.sysid =tp_system.id')
        ->join('tp_path ON tp_system.id = tp_path.sysid')
        ->join('tp_func ON tp_path.id = tp_func.pathid')
        ->order("tp_system.sysno,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id")
        ->select();
        $this->assign("data",$data);
        $where=array("proid"=>$proid,"testgp"=>$testgp);
        $this->assign('w',$where);
        // dump($data);
        $this->display();

    }


    public function range(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $testgp=$_GET['testgp'];

        /* 实例化模型*/
        $s = D("system");
        $where=array("tp_func.fproid"=>"$proid");
        $data=$s->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')
        ->where($where)
        ->order("tp_system.sysno,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id")
        ->select();
        $this->assign("data",$data);
        // dump($data);
        $where=array("proid"=>"$proid","testgp"=>$testgp);
        $this->assign('w',$where);


        $this->display();

    }


}