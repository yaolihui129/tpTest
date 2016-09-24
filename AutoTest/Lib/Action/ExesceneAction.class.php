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



public function queue(){
    /* 接收参数*/
    $proid=$_GET['proid'];
    $stageid=$_GET['stageid'];
    $stagetesterid=$_GET['stagetesterid'];
    $type=$_GET['type'];
    $tester=$_GET['tester'];
    /* 实例化模型*/
    $m=D('stage');
    $where=array("tp_stage.proid"=>$proid,"tp_stagetester.type"=>$type);
    $data=$m->join(" tp_stagetester ON tp_stage.id = tp_stagetester.stageid")
    ->where($where)->order("tp_stagetester.sn")->select();
    $this->assign('data',$data);
//     dump($data);
    
    $m=D('exescene');
    $where=array("stagetesterid"=>$stagetesterid);
    $exe=$m->where($where)->order("sn")->select();
    $this->assign('exe',$exe);
    
    
    $m=D('scene');
    $where=array("proid"=>$proid,"type"=>$type);
    $scene=$m->where($where)->order("sn")->select();
    $this->assign('scene',$scene);
    $where=array("proid"=>$proid,"stageid"=>$stageid,"stagetesterid"=>$stagetesterid,"tester"=>$tester,"type"=>$type);
    $this->assign('w',$where);

   $this->display();

}

public function insert(){

    $m=D('exescene');
    $where=array("stagetesterid"=>$_GET['stagetesterid'],"type"=>$_GET['type']);
    $_GET['sn']=$m->where($where)->count()+1;      
    $_GET['adder']=$_SESSION['realname'];
    $_GET['moder']=$_SESSION['realname'];
    $_GET['updateTime']=date("Y-m-d H:i:s",time());
//             dump($_GET);
    if(!$m->create($_GET)){
        $this->error($m->getError());
    }
    $lastId=$m->add($_GET);
    if($lastId){
        $this->success("添加成功");
    }else{
        $this->error("添加失败");
    }
}


}