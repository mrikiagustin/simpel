<style type="text/css">
	#detailzzzs th{
		font-size: 12px;
	}

	#detailzzzs td input , .select2_style{
		//font-size: 12px;
		width: 10px;
	}

	.select2-container{
		width: 10px;
	}
</style>

<?php
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>

<?php
$ret = "<table ><tr>
<td style='padding:5px'><a  href='".base_url().$this->router->fetch_module()."/".$this->router->fetch_class()."/pdf/1". "' class='print btn btn-primary'> Download PDF</a></td>
<td style='padding:5px'><a  href='".base_url().$this->router->fetch_module()."/".$this->router->fetch_class()."/pdf/0". "' class='print btn btn-primary' target='_blank'> Print PDF</a></td>";
$ret .= "<td style='padding:5px'>
          <label><input type='radio' name='kop' value='1' checked> Dengan Kop </label>
          <br>
          <label><input type='radio' name='kop' value='0'> Tanpa Kop </label>
        </td>";
$ret .="</tr></table>";
echo $ret;
?>

<?php echo $output; ?>

<?php foreach($js_files as $file): ?>
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>

<script type="text/javascript">
	var counter;
	var picker;
	var cloned  = $( ".master_detail" ).clone(true,true);



	$( ".master_detail" ).remove();
	counter = parseInt($(".counter").html());

	//setTimeout(function(){ alert($(".counter").html()); }, 200);

	$("#add_detail").click(function () {
		counter += 1;
		//cloned = cloned.children("select").select2("destroy");
		cloned.addClass("last");

		temp = cloned.clone(true,true);

		console.log("counter",counter);
		console.log("temp",temp);

		//console.log("temp",temp.find("input"));

		temp.find("select[name='det[0][kodelab]']").attr("name","det[" + counter + "][kodelab]");
		temp.find("input[name='det[0][komoditas]']").attr("name","det[" + counter + "][komoditas]");
		temp.find("input[name='det[0][varietas]']").attr("name","det[" + counter + "][varietas]");
		temp.find("input[name='det[0][jumlah]']").attr("name","det[" + counter + "][jumlah]");
		temp.find("select[name='det[0][satuan]']").attr("name","det[" + counter + "][satuan]");
		temp.find("select[name='det[0][kemasan]']").attr("name","det[" + counter + "][kemasan]");
		temp.find("select[name='det[0][kondisi]']").attr("name","det[" + counter + "][kondisi]");
		temp.find("select[name='det[0][pengujian]']").attr("name","det[" + counter + "][pengujian]");
		temp.find("select[name='det[0][metode]']").attr("name","det[" + counter + "][metode]");
		temp.find("textarea[name='det[0][keterangan]']").attr("name","det[" + counter + "][keterangan]");

		temp.find("input[name='det[0][pengujian_text]']").attr("name","det[" + counter + "][pengujian_text]");
		temp.find("input[name='det[0][metode_text]']").attr("name","det[" + counter + "][metode_text]");

		temp.appendTo("#detailzzzs");

		$("#detailzzzs").find(".last").find("select").select2();
	});


	$("body").on("click",".remove_detail",function (e) {
		//$(this).remove();
		$(this).parent().parent().remove();
	});

	$("form").on("submit",function (e) {
		$.each($(".multiple_check"),function (i,val) {
			v = $(this).select2("val");
			nm = $(this).attr("name");
			nm = nm.substring(0, nm.length - 1);

			console.log("nm",nm);

			$("input[name='" + nm + "_text]']").val(v.join(","));
			console.log("final value",$(this).select2("val"));
			//console.log();
		});


	});

	$(document).ready(function () {
		// $.each($(".multiple_check"),function (i,val) {
		// 	var t = $(this);
		// 	nm = $(this).attr("name");

		// 	nm = nm.substring(0, nm.length - 1);

		// 	console.log(["Trade Fair", "CA", "Party"]);
		// 	var vall = $("input[name='" + nm + "_text]']").val().split(",");
		// 	console.log(vall);

		// 	//setMutiple(t,vall);
		// 	$(this).select2('val', ["2", "3"]).trigger("change");

		// 	//setTimeout(function(){  }, 200);


		// 	//console.log("final value",$(this).select2("val"));
		// 	//console.log();
		// });
	});


	function open_picker (){
		picker = window.open('<?php echo base_url() ?>master/pelanggan_picker', '_blank', 'location=yes,height=570,width=800,scrollbars=yes,status=yes');
	}

	function retrieve(argument) {
		var res = argument.split("#");
		//alert(decodeURI(res[1]));

		var final = decodeURI(res[1]).split("X.X");

		$("input[name='id_pelaggan']").val(final[0]);
		$("input[name='nama']").val(final[1]);
		$("input[name='instansi_perusahaan']").val(final[2]);
		$("input[name='nik_npwp']").val(final[2]);
		$("input[name='alamat']").val(final[3]);
		$("input[name='telepon_fax']").val(final[4]);
		$("input[name='kontak_person']").val(final[5]);

		picker.close();
	}


	$(document).ready(function() {
						$(".numberOnly").on("keydown",function (e) {
                // console.log("e",e);

                // Allow: backspace, delete, tab, escape, enter and comma.
                if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190,188]) !== -1 ||
                     // Allow: Ctrl/cmd+A
                    (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
                     // Allow: Ctrl/cmd+C
                    (e.keyCode == 67 && (e.ctrlKey === true || e.metaKey === true)) ||
                     // Allow: Ctrl/cmd+X
                    (e.keyCode == 88 && (e.ctrlKey === true || e.metaKey === true)) ||
                     // Allow: home, end, left, right
                    (e.keyCode >= 35 && e.keyCode <= 39)) {
                         // let it happen, don't do anything
                         return;
                }
                // Ensure that it is a number and stop the keypress
                if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                    e.preventDefault();
                    go = false;
                }
            });

            // $(".numberOnly").keydown();

            $(".numberOnly").on("keyup",function (e) {
                var go = true;
                var comma;
                var c;

                base = $(this).val();



                if(base.indexOf(',') !== -1){
                    // console.log("base",typeof base);
                    // var x = base +'';
                    c = true;
                    var temp = base.split(",");
                    comma = temp[1];
                    angka = temp[0];
                }else{
                    angka = base;
                }

                if(go){
                    angka = angka.replace(/[.]/g,"");
                    var rev     = parseInt(angka, 10).toString().split('').reverse().join('');

                    if(isNaN(rev)) rev = 0;

                    var rev2    = '';
                    for(var i = 0; i < rev.length; i++){
                        rev2  += rev[i];
                        if((i + 1) % 3 === 0 && i !== (rev.length - 1)){
                            rev2 += '.';
                        }
                    }

                    if(comma){
                        var res = rev2.split('').reverse().join('');
                        $(this).val(res+','+comma);
                    }else{
                        if(c){
                            $(this).val(rev2.split('').reverse().join('')+',');
                        }else{
                            $(this).val(rev2.split('').reverse().join(''));
                        }

                    }

                }
            });

            // $(".numberOnly").keyup();

            $(".number").on("keydown",function (e) {
                if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190,188]) !== -1 ||
                     // Allow: Ctrl/cmd+A
                    (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
                     // Allow: Ctrl/cmd+C
                    (e.keyCode == 67 && (e.ctrlKey === true || e.metaKey === true)) ||
                     // Allow: Ctrl/cmd+X
                    (e.keyCode == 88 && (e.ctrlKey === true || e.metaKey === true)) ||
                     // Allow: home, end, left, right
                    (e.keyCode >= 35 && e.keyCode <= 39)) {
                         // let it happen, don't do anything
                         return;
                }
                // Ensure that it is a number and stop the keypress
                if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                    e.preventDefault();
                    go = false;
                }
            });
});


</script>

<script>
	$(document).ready(function() {
		$("input[name='uang_muka']").on("keyup",function() {
			total = $("input[name='total']").val();
			total = total.split('.').join("");

			uang_muka = $(this).val();
			uang_muka = uang_muka.split('.').join("");

			console.log(total);
			console.log(uang_muka);

			$("input[name='sisa_pembayaran']").val(total - uang_muka);
			$("input[name='sisa_pembayaran']").trigger("keyup");

		});

		$(".print").on("click",function(e) {
			e.preventDefault();
			console.log($("[name='kop']").val());
			window.open($(this).attr("href") + "/" + $("[name='kop']:checked").val(), '_blank');
		})
	});
</script>
