<?php
class ScenecaseAction extends CommonAction {
    public function index(){
        /* 接收参数*/
        $funcid=$_GET['funcid'];
        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
        /* 实例化模型*/
        $m=D('system');
        $where=array("tp_scenefunc.sceneid"=>$sceneid);
        $data=$m
        ->join("inner JOIN tp_path ON tp_system.id = tp_path.sysid")
        ->join("inner JOIN tp_func ON tp_path.id = tp_func.pathid")
        ->join("inner JOIN tp_scenefunc ON tp_func.id = tp_scenefunc.funcid")
        ->where($where)->order('tp_scenefunc.sn')->select();
        $this->assign("data",$data);
        $m=D('case');
        $where=array("funcid"=>$funcid);
        $case=$m->where($where)->select();
//         $m=('case');
//         $where=array("funcid"=>$funcid);
//         $case=$m->select();
        $this->assign("case",$case);
        dump($case);
        
        $where=array("proid"=>"$proid","sceneid"=>$sceneid);
        $this->assign("w",$where);
        
        $this->display();
    }
    
}