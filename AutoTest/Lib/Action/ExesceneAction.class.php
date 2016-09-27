<?php

class ExesceneAction extends CommonAction {
    public function index(){
        $type=$_GET['type'];


    	 $m=M('program');
    	 $where=array("tp_stage.state"=>"进行中","tp_stagetester.tester"=>$_SESSION['realname'],"tp_stagetester.type"=>$type);
    	 $data=$m->join("tp_stage ON tp_program.id = tp_stage.proid")
    	 ->join("tp_stagetester ON tp_stage.id = tp_stagetester.stageid")
    	 ->order("tp_program.end desc")
         ->where($where)
    	 ->select();
	     $this->assign('data',$data);
// 	    dump($data);
	     $stagetesterid=!empty($_GET['stagetesterid'])?$_GET['stagetesterid']:$data[0]['id'];
	     $proid=!empty($_GET['proid'])?$_GET['proid']:$data[0]['proid'];
	     $m=D('exescene');
	     $where=array("stagetesterid"=>$stagetesterid);
	     $exe=$m->where($where)->order("sn")->select();
	     $this->assign('exe',$exe);

	     $where=array("proid"=>$proid,"stagetesterid"=>$stagetesterid,"type"=>$type);
	     $this->assign('w',$where);
// dump($exe);

	     $this->display();
    }

    public function test(){

        $type=$_GET['type'];

        $m=M('program');
        $where=array("tp_stage.state"=>"进行中","tp_stagetester.tester"=>$_SESSION['realname'],"tp_stagetester.type"=>$type);
        $data=$m->join("tp_stage ON tp_program.id = tp_stage.proid")
        ->join("tp_stagetester ON tp_stage.id = tp_stagetester.stageid")
    	->order("tp_program.end desc")
        ->where($where)
        ->select();
        $this->assign('data',$data);
        // 	    dump($data);

        $stagetesterid=!empty($_GET['stagetesterid'])?$_GET['stagetesterid']:$data[0]['id'];
        $m=D('exescene');
        $where=array("stagetesterid"=>$stagetesterid);
        $exe=$m->where($where)->order("sn")->select();
        $this->assign('exe',$exe);
        $proid=!empty($_GET['proid'])?$_GET['proid']:$data[0]['proid'];
        $where=array("proid"=>$proid,"stagetesterid"=>$stagetesterid,"type"=>$type);
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
    ->where($where)->order("tp_stage.id,tp_stagetester.sn")->select();
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

public function modsn(){

    dump($_POST);
}

public function insert(){
    $sceneid=$_GET['sceneid'];
    $m=D('scene');
    $data=$m->field("type,level,swho,swhen,testip,scene,flow")->find($sceneid);

    $m=D('exescene');
    $where=array("stagetesterid"=>$_GET['stagetesterid'],"type"=>$_GET['type']);
    $data['sn']=$m->where($where)->count()+1;
    $data['adder']=$_SESSION['realname'];
    $data['moder']=$_SESSION['realname'];
    $data['updateTime']=date("Y-m-d H:i:s",time());
    $data['stagetesterid']=$_GET['stagetesterid'];
    $data['sceneid']=$sceneid;

    /*插入执行场景数据 */
    if(!$m->create($data)){
        $this->error($m->getError());
    }
    $lastId=$m->add($data);
     $m=D("scenefunc");
     $where=array("sceneid"=>$sceneid);
     $arr=$m->field("sn,funcid,sysno,path,func,remarks as funcremarks,casestate,casemain,caseexpected,
            num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20")
     ->where($where)->select();
     /*插入执行场景功能数据 */
     foreach ($arr as $a){
         $a['exesceneid']=$lastId;
         $a['adder']=$_SESSION['realname'];
         $a['moder']=$_SESSION['realname'];
         $a['updateTime']=date("Y-m-d H:i:s",time());
         $m=D('exefunc');
         if(!$m->create($a)){
             $this->error($m->getError());
         }
         $lastfId=$m->add($a);
     }
    if($lastfId){
        $this->success("添加成功");
    }else{
        $this->error("添加失败");
    }

}


public function library(){
    /* 接收参数*/
    $proid=$_GET['proid'];
    $stageid=$_GET['stageid'];
    $stagetesterid=$_GET['stagetesterid'];
    $type=$_GET['type'];
    $tester=$_GET['tester'];
    /* 实例化模型*/

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



}