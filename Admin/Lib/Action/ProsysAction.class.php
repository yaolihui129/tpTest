<?php

class ProsysAction extends CommonAction {
    public function index(){
         /* 接收参数*/
        $proid=$_GET['proid'];
        $prodid=$_GET['prodid'];
         /* 实例化模型*/
        $s = D("prosys");
        $where=array("proid"=>"$proid");
        $data=$s->where($where)
        ->join('tp_system ON tp_prosys.sysid =tp_system.id')
        ->select();
//         dump($data);

        $this->assign("data",$data);
        $this->assign('w',$where);

        /* 实例化模型*/
        $m=M('system');
        /*查询数据 */
        $where=array(prodid=>$prodid);
        $syses=$m->where($where)->select();
        /*输出数据 */
        $this->assign('syses',$syses);
       // var_dump($syses);

	     $this->display();
    }


    public function insert(){
        /* 接收参数*/

        $m=D('prosys');
        $_GET['adder']=$_SESSION['realname'];
        $_GET['moder']=$_SESSION['realname'];
        $_GET['updateTime']=date("Y-m-d H:i:s",time());
//         dump($_GET);
//         exit();
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


    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['prosysid']) ? $_POST['prosysid'] : $_GET['prosysid'];

        /* 实例化模型*/
        $m=M('prosys');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}