<?php 
	defined('BASEPATH') OR exit('No direct script access allowed');
class Data extends CI_Model{
	function insert_into($data=array(),$tablename){
		$this->db->insert($tablename,$data);
	}
	function user_login($key,$password){
	   $this->db-> select('u.no, u.id_user,u.email, u.level, d.profile');
	   $this->db-> from('user as u');
	   $this->db-> join('user_data as d','u.id_user=d.id_user');
	   $this->db-> where('email', $key);
	   $this->db-> where('password', MD5($password));
	   $this->db-> limit(1);
	   $query=$this->db->get();
	   if($query -> num_rows() == 1)
	   {
	     return $query->result();
	   }
	   else
	   {
	     return false;
	   }
	}

	// get data menu random in
	function get_menu_rand(){
		return $this->db->query("SELECT m.* FROM menu m JOIN (SELECT kd_menu FROM menu WHERE RAND() < (SELECT ((4 / COUNT(*)) * 10) FROM menu) ORDER BY RAND()
						  LIMIT 4) AS z ON z.kd_menu = m.kd_menu where m.status=1")->result();
	}
	// data lihat menu
	function get_menu($limit,$last_id){
		$this->db->select('*');
		$this->db->from('menu');
      $this->db->where('status=1');
		$this->db->limit($limit);
		$this->db->offset($last_id);
		$query=$this->db->get();
		return $query->result();
	}
	function get_menu2($limit,$last_id){
		$this->db->select('a.*,b.*,c.*,c.*,d.*');
		$this->db->from('menu as a');
		$this->db->join('set_menu as b', 'b.kd_menu=a.kd_menu', 'inner join');
        $this->db->join('nama_set as c', 'c.kd_set=b.kd_set', 'inner join');
      	$this->db->join('jenis_set as d', 'd.kd_jenis=b.kd_jenis', 'inner join');
        $this->db->where('a.status',1);
        $this->db->where('a.stok > ',0);
        $this->db->order_by('b.id','asc');
		$this->db->limit($limit);
		$this->db->offset($last_id);
		$query=$this->db->get();
		return $query->result();
	}
  	// data lihat menu SET
	function get_menu_set(){
		$this->db->select('a.*,b.*,c.*,c.*,d.*');
        $this->db->from('menu as a'); 
        $this->db->join('set_menu as b', 'b.kd_menu=a.kd_menu', 'inner join');
        $this->db->join('nama_set as c', 'c.kd_set=b.kd_set', 'inner join');
      	$this->db->join('jenis_set as d', 'd.kd_jenis=b.kd_jenis', 'inner join');
        $this->db->where('a.status',1);
        $this->db->order_by('b.id','asc');         
        $query = $this->db->get(); 
        return $query->result();
       
	}
	//Get set menu
	/*function get_set_menu(){
		return $this->db->query("SELECT m.* FROM set_menu as m JOIN (SELECT z.* FROM menu as z)  ON z.kd_menu = m.kd_menu JOIN (SELECT n.* FROM nama_set as n) ON n.kd_set=m.kd_set JOIN (SELECT o.* FROM jenis_set as o) ON o.kd_jenis=m.kd_jenis JOIN (SELECT p.* FROM paket_menu as p) ON p.kd_paket=m.kd_paket where p.kd_paket=1 ")->result();
	}*/
	function get_set_menu(){
		$this->db->select('a.*,b.*,c.*,c.*,d.*');
        $this->db->from('set_menu as a'); 
        $this->db->join('menu as b', 'b.kd_menu=a.kd_menu', 'inner join');
        $this->db->join('nama_set as c', 'c.kd_set=a.kd_set', 'inner join');
      	$this->db->join('jenis_set as d', 'd.kd_jenis=a.kd_jenis', 'inner join');
      	$this->db->join('paket_menu as e', 'e.kd_paket=a.kd_paket', 'inner join');
        $this->db->where('a.kd_paket',1);
        $this->db->order_by('a.id','asc');         
        $query = $this->db->get(); 
        return $query->result();
	}
  	// data lihat nama SET
	function get_nama_set(){
		return $this->db->query("SELECT m.* FROM set_menu m JOIN (SELECT z.* FROM nama_set z) ON z.kd_set = m.kd_set")->result();
	}
  	// data lihat jenis SET
	function get_jenis_set(){ 
		return $this->db->query("SELECT m.* FROM set_menu m JOIN (SELECT z.* FROM jenis_set z) ON z.kd_jenis = m.kd_jenis")->result();
	}

	// select data menu pagi
	function get_menu_pagi(){
		return $this->db->query("SELECT m.* FROM menu m JOIN (SELECT kd_menu FROM menu WHERE RAND() < (SELECT ((8 / COUNT(*)) * 10) FROM menu) ORDER BY RAND()
						  LIMIT 8) AS z ON z.kd_menu = m.kd_menu")->result();
	}
	// select data menu siang
	function get_menu_siang(){
		return $this->db->query("SELECT m.* FROM menu m JOIN (SELECT kd_menu FROM menu WHERE RAND() < (SELECT ((8 / COUNT(*)) * 10) FROM menu) ORDER BY RAND()
						  LIMIT 8) AS z ON z.kd_menu = m.kd_menu")->result();
	}
	// select data menu malam
	function get_menu_malam(){
		return $this->db->query("SELECT m.* FROM menu m JOIN (SELECT kd_menu FROM menu WHERE RAND() < (SELECT ((8 / COUNT(*)) * 10) FROM menu) ORDER BY RAND()
						  LIMIT 8) AS z ON z.kd_menu = m.kd_menu")->result();
	}
	// select data menu ekonomis
	function get_menu_ekonomis(){
		$this->db->select('*');
		$this->db->from('menu');
		$this->db->where('harga <=',10000);
		$this->db->limit(8);
		$query=$this->db->get();
		return $query->result();
	}
	//take menu picture
	function get_menu_pic($kd_menu){
		$this->db->select('pic');
		$this->db->from('menu');
		$this->db->where('kd_menu',$kd_menu);
		$query=$this->db->get();
		$url=$query->result();
		return $url[0]->pic;
	}
	//cekprofile
	function cek_data_diri($id_user){
		$this->db->select('nama, alamat, kd_pos');
		$this->db->from('user_data');
		$this->db->where('id_user',$id_user);
		$result=$this->db->get()->result();
		if (is_null($result[0]->nama) or is_null($result[0]->alamat) or is_null($result[0]->kd_pos)) {
			return false;
		}else{
			return true;
		}
	}
    function update_profile($data,$table,$selector,$selectorvalue){
    	if ($this->db->update($table, $data, array($selector => $selectorvalue))) {
    		return true;
    	}else{
    		return false;
    	}
    }
    function get_data_diri($id_user){
    	$this->db->select('nama, alamat, kd_pos');
    	$this->db->from('user_data');
    	$this->db->where('id_user',$id_user);
    	return $this->db->get()->result();
    }
    function get_riwayat_pesanan($id_user,$limit,$offset){
    	$this->db->select("t.id, t.no_pesanan, t.tgl_pesan, t.tgl_ambil, t.status_pesanan, t.status_pembayaran, t.metode_pengambilan, t.qty, t.harga_total, m.nama");
    	$this->db->from('tpesanan as t');
    	$this->db->join('menu as m', 't.kd_menu=m.kd_menu');
    	$this->db->where('id_user',$id_user);
    	$this->db->offset($offset);
    	$this->db->limit($limit);
    	$this->db->order_by('tgl_pesan','DESC');
    	return $this->db->get()->result();
    }
    function count_data_pesanan($id_user){
    	$this->db->select('count(id) as row');
    	$this->db->from('tpesanan');
    	$this->db->where('id_user',$id_user);
    	$data=$this->db->get()->result();
    	return $data[0]->row;
    }
    function cek_no_pesanan($no_pesanan){
    	$this->db->select('no_pesanan');
    	$this->db->from('tpesanan');
    	$this->db->where('no_pesanan',$no_pesanan);
    	if ($this->db->get()->num_rows()>0) {
    		return true;
    	}else{
    		return false;
    	}
    }
}