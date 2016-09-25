<?php

class FuncAction extends CommonAction {
    public function index(){
         /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        /* 实例化模型*/
        $m=D('path');
        $where=array("sysid"=>"$sysid","state"=>"正常");
        $data=$m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        /* 实例化模型*/
        $m= D("func");
        $where=array("pathid"=>"$pathid");
        $funcs=$m->where($where)->order("sn")->select();
        $this->assign("funcs",$funcs);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>"$pathid");
        $this->assign("w",$where);

	    $this->display();
    }
    public function indexp(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        /* 实例化模型*/
        $m=D('path');
        $where=array("sysid"=>"$sysid","state"=>"正常");
        $data=$m->where($where)->order("sn")->select();
        $this->assign("data",$data);

        /* 实例化模型*/
        $m= D("func");
        $where=array("pathid"=>"$pathid");
        $funcs=$m->where($where)->order("sn")->select();
        $this->assign("funcs",$funcs);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>"$pathid");
        $this->assign("w",$where);

        $this->display();
    }

    public function add(){

        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        /* 实例化模型*/
        $m= D("func");
        $where=array("pathid"=>"$pathid");
        $data=$m->where($where)->order("sn")->select();
       // dump($data);
        $this->assign("data",$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $where=array("prodid"=>$prodid,"sysid"=>$sysid,"pathid"=>"$pathid");
        $this->assign("w",$where);
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));


        $this->display();
    }

    public function addf(){

        /* 接收参数*/

        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];

        /* 实例化模型*/
        $m= D("func");
        $where=array("pathid"=>"$pathid");
        $data=$m->where($where)->order("sn")->select();
        // dump($data);
        $this->assign("data",$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $where=array("proid"=>$proid,"pathid"=>"$pathid");
        $this->assign("w",$where);
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));


        $this->display();
    }

    public function addp(){

        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];

        /* 实例化模型*/
        $m= D("func");
        $where=array("pathid"=>"$pathid");
        $data=$m->where($where)->order("sn")->select();
        // dump($data);
        $this->assign("data",$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>"$pathid");
        $this->assign("w",$where);
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));


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
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $id=$_GET['id'];
        /* 实例化模型*/
        $m= D("func");
        $where=array("pathid"=>"$pathid");
        $data=$m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        $where=array("prodid"=>$prodid,"sysid"=>$sysid,"pathid"=>"$pathid");
        $this->assign("w",$where);
        $func=$m->find($id);
        $this->assign("func",$func);
        $this -> assign("state", formselect($func['state']));
        $this -> assign("fproid", proselect($func['fproid'],"fproid"));

        $this->display();
    }

    public function modf(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $id=$_GET['id'];
        /* 实例化模型*/
        $m= D("func");
        $where=array("pathid"=>"$pathid");
        $data=$m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        $where=array("proid"=>$proid,"pathid"=>"$pathid");
        $this->assign("w",$where);
        $func=$m->find($id);
        $this->assign("func",$func);
        $this -> assign("state", formselect($func['state']));
        $this -> assign("fproid", proselect($func['fproid'],"fproid"));

        $this->display();
    }

    public function modp(){
        /* 接收参数*/
       $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $id=$_GET['id'];
        /* 实例化模型*/
        $m= D("func");
        $where=array("pathid"=>"$pathid");
        $data=$m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>"$pathid");
        $this->assign("w",$where);
        $func=$m->find($id);
        $this->assign("func",$func);
        $this -> assign("state", formselect($func['state']));
        $this -> assign("fproid", proselect($func['fproid'],"fproid"));

        $this->display();
    }

    public function modr(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $id=$_GET['id'];
        /* 实例化模型*/
        $m= D("func");
        $where=array("pathid"=>"$pathid");
        $data=$m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        $where=array("proid"=>$proid,"pathid"=>"$pathid");
        $this->assign("w",$where);
        $func=$m->find($id);
        $this->assign("func",$func);
        $this -> assign("state", formselect($func['state']));
        $this -> assign("fproid", proselect($func['fproid'],"fproid"));

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
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);

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
        $where=array("proid"=>$proid);
        $this->assign('w',$where);
// dump($data);
        $this->display();

    }


    public function range(){
        /* 接收参数*/
        $proid=$_GET['proid'];
    	$gp=$_SESSION['testgp'];
         /* 实例化模型*/
        $m= D("program");
        $where=array("testgp"=>"$gp");
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);

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
        $where=array("proid"=>"$proid");
        $this->assign('w',$where);


        $this->display();

    }
    
    public function library(){
        /* 接收参数*/        
        $proid=$_GET['proid'];      
        $sceneid=$_GET['sceneid'];
//         echo $proid,$sceneid;
        /* 实例化模型*/
        $m= D("prosys");
        $where=array("tp_prosys.proid"=>"$proid");
        $data=$m->join('inner JOIN tp_system ON tp_system.id = tp_prosys.sysid')
        ->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->where($where)
        ->order("tp_system.sysno,tp_path.sn,tp_path.id")
        ->select();
        $this->assign("data",$data);
//         dump($data);        
        $m= D("func");
        $pathid=!empty($_GET['pathid'])?$_GET['pathid']:$data[0]['id'];
        $where=array("pathid"=>"$pathid");
        $funcs=$m->where($where)->order("sn")->select();
        $this->assign("funcs",$funcs);
        $m=D('system');
        $where=array("tp_scenefunc.sceneid"=>$sceneid);
        $sfunc=$m
        ->join("inner JOIN tp_path ON tp_system.id = tp_path.sysid")
        ->join("inner JOIN tp_func ON tp_path.id = tp_func.pathid")
        ->join("inner JOIN tp_scenefunc ON tp_func.id = tp_scenefunc.funcid")
        ->where($where)->order('tp_scenefunc.sn')->select();
        $this->assign("sfunc",$sfunc);
        $where=array("tp_hcfunc.adder"=>$_SESSION['realname']);
        $hfunc=$m
        ->join("inner JOIN tp_path ON tp_system.id = tp_path.sysid")
        ->join("inner JOIN tp_func ON tp_path.id = tp_func.pathid")
        ->join("inner JOIN tp_hcfunc ON tp_func.id = tp_hcfunc.funcid")
        ->where($where)->order('tp_hcfunc.sn')->select();
        $this->assign("hfunc",$hfunc);
    
        $where=array("proid"=>"$proid","sceneid"=>$sceneid,"pathid"=>$pathid);
        $this->assign('w',$where);
        
               
        $this->display();             
    }
    
    public function modproid(){
        /* 实例化模型*/
                      
        $db=D('func');
       
        if ($db->save($_GET)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
           
    }
    
    
    

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('func');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }


}