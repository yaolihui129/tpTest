<?php

class ExesceneAction extends CommonAction {
    public function index(){

    	 $m=M('program');
    	 $where=array("tp_stage.state"=>"已完成");
    	 $data=$m->join("tp_stage ON tp_program.id = tp_stage.proid")
    	 ->order("prono desc")
         ->where($where)
    	 ->select();
	     $this->assign('data',$data);
// 	    dump($data);

	     $stageid=!empty($_GET['stageid'])?$_GET['stageid']:$data[0]['id'];
	     $m=D('exescene');
	     $where=array("stageid"=>$stageid,"tester"=>$_SESSION['realname'],"type"=>"Manual");
	     $exe=$m->where($where)->order("sn")->select();
	     $this->assign('exe',$exe);
	     $proid=!empty($_GET['proid'])?$_GET['proid']:$data[0]['proid'];
	     $where=array("proid"=>$proid,"stageid"=>$stageid);
	     $this->assign('w',$where);


	     $this->display();
    }

    public function test(){

        $m=M('program');
        $where=array("tp_stage.state"=>"已完成");
        $data=$m->join("tp_stage ON tp_program.id = tp_stage.proid")
        ->order("prono desc")
        ->where($where)
        ->select();
        $this->assign('data',$data);
        // 	    dump($data);

        $stageid=!empty($_GET['stageid'])?$_GET['stageid']:$data[0]['id'];
        $m=D('exescene');
        $where=array("stageid"=>$stageid,"tester"=>$_SESSION['realname'],"type"=>"Auto");
        $exe=$m->where($where)->order("sn")->select();
        $this->assign('exe',$exe);
        $proid=!empty($_GET['proid'])?$_GET['proid']:$data[0]['proid'];
        $where=array("proid"=>$proid,"stageid"=>$stageid);
        $this->assign('w',$where);


        $this->display();

   }






}