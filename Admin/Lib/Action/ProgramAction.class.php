<?php

class ProgramAction extends CommonAction {
    public function index(){
        /* 接收参数*/
        
        /* 实例化模型*/
    	 $m=M('program');
    	 $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
    	 $arr=$m->where(array("testgp"=>"$testgp"))->select();

	     $this->assign('Pros',$arr);
	     $this->display();
    }



    public function add(){
        /* 接收参数*/
       $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        /* 实例化模型*/
        $pros= D("program")
        ->where(array("testgp"=>"$testgp"))
        ->select();

        $this->assign("pros",$pros);
        //dump($pros);
        //初始化添加字段
        $tol=D("program")->where(array("testgp"=>"$testgp"))->count();
        $d=date("ym",time());
        $manager= $_SESSION['realname'];
        $start=date("Y-m-d",time());
        $end=date("Y-m-d",time()+7*24*3600);
        $arr=array("proid"=>"$testgp$d".".".($tol+1),"manager"=>"$manager","prodId"=>"1","state"=>"进行中","type"=>"简要","testgp"=>"$testgp");
        $this->assign("p",$arr);
        $this->assign("startDate",PublicAction::date("start",$start));
        $this->assign("endDate",PublicAction::date("end",$end));
       
        $this->display();
    }

    public function insert(){
        /* 实例化模型*/
        $m=D('program');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($m->create()){
            $count=$m->add($_POST);
            if ($count){
                $this->success("添加成功");
            }else{
                $this->error("添加失败");
            }
        }else{
            $this->error($m->getError());
        }
    }

    public function mod(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
       /* 实例化模型*/
        $m=M(program);
        $pros= $m
        ->where(array("testgp"=>"$testgp"))
        ->select();
        $this->assign("pros",$pros);

        $arr=$m->find($id);
        $this->assign('p',$arr);
        $this->assign("startDate",PublicAction::date("start",$arr['start']));
        $this->assign("endDate",PublicAction::date("end",$arr['end']));

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('program');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
   }


    public function details(){
        /* 接收参数*/
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D("program");
        $pros= $m
        ->where(array("testgp"=>"$testgp"))
        ->select();
        $this->assign("pros",$pros);
        //获取要编辑项目
        $arr=$m->find($id);
        $this->assign('p',$arr);
        $this->assign("online",PublicAction::date("expOnline",$arr['expOnline']));
        $this->assign("jianjie",PublicAction::editor("profile",$arr['profile']));
        $this->display() ;
    }

    public function chaged(){
        /* 接收参数*/

        $testgp=$_GET['testgp'];

        $_SESSION['testgp']=$testgp;
        $this->redirect('Index/index');


    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('program');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}