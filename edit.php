<?php
require_once('db.php');
$id = $_GET['nim'];
$sql = mysqli_query($conn, "SELECT * FROM pendataan WHERE nim = '$nim'");
$row = mysqli_fetch_assoc($sql);
if(isset($_POST['proses'])){
 $nim				= $_POST["nim"];
 $nama 				= $_POST["nama"];
 $jk				= $_POST["jk"];
 $prodi				= $_POST["prodi"];
 $fakultas			= $_POST["fakultas"];
 $asal 				= $_POST["asal"];
 $motohidup		= $_POST["motohidup"];
 $sql = "UPDATE mdata SET nim = '$nim', nama = '$nama', jk = '$jk', prodi = '$prodi', fakultas = '$fakultas', asal = '$asal', mottohidup = '$mottohidup' WHERE id='$nim'";
 if (mysqli_query($conn, $sql)) {
 header('Location: lihatdata.php');
 }else {
 echo "Data gagal diupload! " . $sql . "<br?" . mysqli_error($conn);
}
mysqli_close($conn);
}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>

</head>
<body>
	<h1>EDIT DATA</h1>
	<form method="POST">
	Nama : <input type="text" name="nama"  minlength="1" maxlength="25"  value="<?php echo $row["nama"];?>"><br><br>
	NIM : <input type="number"  name="nim" maxlength="10"  value="<?php echo $row["nim"];?>"  required ><br><br>
	Jenis Kelamin :	<input type="radio" name="jk" value="Perempuan" required>Perempuan 
	<input type="radio" name="jk" value="Laki - Laki" required>Laki - Laki
	<br><br>
	Program Studi :
	<select name="prodi">
	<option>D3 Teknik Telekomunikasi</option>		
	<option>D3 Komputerisasi Akuntansi</option>
	<option>D3 Manajemen Pemasaran</option>
	<option>D3 Sistem Informasi</option>
	<option>D4 Sistem Multimedia</option>
	<option>D3 Perhotelan</option>
	</select><br><br>
	Fakultas :
	<select name="fakultas">
	<option>Ilmu Terapan</option>
	<option>Informatika</option>
	<option>Teknik Elektro</option>
	<option>Teknik Fisika</option>	
	<option>Administrasi Bisnis</option>
	<option>komunikasi Bisnis</option>
	</select><br><br>
	Asal : <input type="text" name="asal" value="<?php echo $row["asal"];?>"><br><br>
	Motto Hidup : <input type="textarea" name="motohidup" value="<?php echo $row["motohidup"];?>"><br><br>
	<input type="submit" name="upload" id="upload" value="Kirim" style="width: 120px"></td>
</form>
</body>
</html>