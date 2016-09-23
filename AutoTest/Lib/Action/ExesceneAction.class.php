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

   public function tester(){

       /* 接收参数*/
       $stageid=$_GET['stageid'];
       $proid=$_GET['proid'];
       /* 实例化模型*/
       $m=D('stage');
       $where=array("proid"=>$proid);
       $data=$m->where($where)->order("sn")->select();
       $this->assign('data',$data);
      // dump($data);

       $m=D('exescene');
       $where=array("stageid"=>$stageid);
       $exe=$m->where($where)->select();
       $this->assign('exe',$exe);

       $m=D('user');
       $where=array("state"=>"在职");
       $users=$m->where($where)->select();
       $this->assign('users',$users);
       $where=array("proid"=>$proid,"$stageid"=>$stageid);
        $this->assign('w',$where);

dump($users);

       $this->display();

   }

public function queue(){
    /* 接收参数*/
    $stageid=$_GET['stageid'];
    $proid=$_GET['proid'];
    /* 实例化模型*/
    $m=D('stage');
    $where=array("tp_stage.proid"=>$proid);
    $data=$m->join(" tp_exescene ON tp_stage.id = tp_exescene.stageid")
    ->where($where)->order("tp_stage.sn")->select();
    $this->assign('data',$data);
    dump($data);

   $where=array("proid"=>$proid,"$stageid"=>$stageid);
   $this->assign('w',$where);

   $this->display();

}




}