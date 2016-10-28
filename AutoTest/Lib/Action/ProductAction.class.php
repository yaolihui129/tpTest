<?php

class ProductAction extends CommonAction {
    public function index(){
        /* 实例化模型*/
    	 $m=M('product');
    	 $arr=$m->select();

	     $this->assign('data',$arr);
	     $this->display();
    }


    public function add(){
        /* 接收参数*/

        /* 实例化模型*/
        $m=M('product');
        $arr=$m->select();
        /*输出数据 */
        $this->assign('data',$arr);

        $this -> assign("state", formselect());

        $this->display();
    }

    public function insert(){
        /* 实例化模型*/
        $m=D('product');
       $_POST['adder']=$_SESSION['realname'];
       $_POST['moder']=$_SESSION['realname'];
       $_POST['createTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
//         dump($m);
//         exit();
        $lastId=$m->add();
        if($lastId){
           $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }

    public function mod(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('product');
        $arr=$m->select();
        /*输出数据 */
        $this->assign('data',$arr);


        /*查询数据 */
        $prod=$m->find($id);
        /*输出数据 */
        $this->assign('prod',$prod);
        $this -> assign("state", formselect($prod['state']));

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('product');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('product');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }


}