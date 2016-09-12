<?php

class ProgramAction extends CommonAction {
    public function index(){

    	 $m=M('program');
    	 $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
    	 $arr=$m->where(array("testgp"=>"$testgp"))->select();

	     $this->assign('Pros',$arr);
	     $this->display();
    }



    public function add(){
       $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        //获取项目列表
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
        $arr=array("proid"=>"$testgp$d".".".($tol+1),"manager"=>"$manager","prodId"=>"1","state"=>"进行中","type"=>"简要","testgp"=>"$testgp", "start"=>$start,"end"=>$end);
       $this->assign("p",$arr);
       // $this->assign("startDate",Form::date("start",$start));
       // $this->assign("endDate",Form::date("end",$end));
        $this->display();
    }

    public function insert(){
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

        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];

        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        //获取项目列表
        $m=M(program);
        $pros= $m
        ->where(array("testgp"=>"$testgp"))
        ->select();
        $this->assign("pros",$pros);

        $arr=$m->find($id);
        $this->assign('p',$arr);

        $this->display();
    }

    public function update(){
        $db=D('program');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
   }

        //项目详情
    public function details(){
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        //获取项目列表
        $m=D("program");
        $pros= $m
        ->where(array("testgp"=>"$testgp"))
        ->select();
        $this->assign("pros",$pros);
        //获取要编辑项目
        $arr=$m->find($id);
        $this->assign('p',$arr);
       // $this->assign("online",Form::date("exponline",$arr['exponline']));
        //$this->assign("jianjie",Form::editor("profile",$arr['profile']));
        $this->display() ;
    }






    public function del(){
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];

        $m=M('program');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}