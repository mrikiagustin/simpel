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

	.select2-container--default .select2-selection--multiple .select2-selection__choice{
		color:black !important;
	}
</style>

<div class="modal fade modal_paket" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Silahkan Pilih Paket :</h4>
      </div>
      <div class="modal-body">
				<form>
					<input type='hidden' id="hidden_paket_pos">
        Paket : <select class="form-control select2 paket_select" style="width:200px;" >
					<option value="0" selected>-- Pilih --</option>
					<?php $x = $this->db->get("paket");?>
					<?php foreach ($x->result() as $key => $value):?>
					<option value="<?php echo $value->id_paket?>"><?php echo $value->nama_paket?></option>
					<?php endforeach;?>
				</select>
				</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<?php
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>

<?php echo $output; ?>

<?php foreach($js_files as $file): ?>
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<script src="<?php echo base_url("assets/"); ?>jquery.inputmask.bundle.min.js"></script>
 <script>


  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2();
    // $('.select3').select2();


    $('.select3').select2({
      // templateResult : formatSelection3,
      width:200
    });
  });
</script>

<script type="text/javascript">

	<?php
		$hasil_kalkulasi = array();

		$nama_paket = "";
		$zxc = $this->db	->select("paket.nama_paket,paket_detail.*")
							->join("paket","paket.id_paket = paket_detail.id_paket")
							->get("paket_detail");
							//echo "<pre>";print_r($zxc->result());die();
		foreach ($zxc->result() as $key => $value) {
			$hasil_kalkulasi[$value->id_paket][] = $value->id_parameter_pengujian;
		}
	?>

	var data_paket = <?php echo json_encode($hasil_kalkulasi)?>;


	var counter_item = {};
	var counter;
	var picker;

	var cloned_item = $( ".master_param_item" ).clone(true,true);
	$( ".master_param_item" ).remove();

	var cloned  = $( ".master_detail" ).clone(true,true);
	var cloned2  = $( ".master_detail2" ).clone(true,true);
	$( ".master_detail" ).remove();
	$( ".master_detail2" ).remove();
	function formatSelection3(val) {
		//console.log(val);

		if(val.loading){
			return val.text ;//+ " - " + val.element.data("data1");
		}else{
			// console.log("e",val.element);
			// console.log("d",val.element.attributes);
			// console.log("d",val.element.attributes["data-data1"].value);
			// // console.log("d",val.element.data("data1"));
			//
			// if(val.element.attributes["style"]){
			// 	if(val.element.attributes["style"].value == "display: none;"){
			//
			// 		return;
			// 	}
			// }
			//
			// console.log(val.element);
			// console.log("d","not hide");
			// console.log(val);
			if(val.text == "- Pilih -"){
				return val.text;
			}

			return val.text + " - " + val.element.attributes["data-data1"].value ;//+ " - " + val.element.data("data1");
		}
	}





	counter = parseInt($(".counter").html());

	//setTimeout(function(){ alert($(".counter").html()); }, 200);

	$.each($(".mepngujian_counter"),function(i,data){
		exp = $(this).html().split("-");
		counter_item["p"+exp[0]] = exp[1];
	});

	$("body").on("click",".param_delete",function (e) {
		//$(this).remove();
		$(this).parent().remove();
	});

	$("body").on("click",".paket_btn",function (e) {
		m_this = $(this);
		$('.modal_paket').modal('show');
		$("#hidden_paket_pos").val(m_this.data("pos"));
		console.log("paket_pos1",m_this.data("pos"));
		console.log("paket_pos2",$("#hidden_paket_pos").val());
	});

	$("body").on("change",".paket_select",function (e) {

		m_this = $(this);

		if(m_this.val() != 0){
			pos = $("#hidden_paket_pos").val();

			//$(".param_btn[data-pos='"+pos+"']").parent().find(".param_container").html("");



			// console.log("pakett",m_this.val());
			var posisi_sekarang = m_this.val();
			$.each(data_paket[posisi_sekarang],function(i,data){
				// console.log('dataa',posisi_sekarang);
				add_param_with_data($(".param_btn[data-pos='"+pos+"']"),data,posisi_sekarang);
			});


			// m_this.select2().select2('val',"0");
			// m_this.val("0").trigger('change');
			// m_this.val("0").trigger('change.select2');

			// m_this.select2('destroy');//	.select2();

			// $("body.paket_select").val("0").trigger('change');
			// $("body.paket_select").val("0").trigger('change.select2');

			// console.log("vaalll",$("body.paket_select").val());
			$('.modal_paket').modal('hide');
		}else{
			// alert("asd");
		}

	});

	function add_param_with_data(target,ddd,paket_id){
		console.log("pakett222",paket_id);
		m_this = target;
		// console.log("asd",m_this.data("pos"));
		temp = cloned_item.clone("true","true");

		// console.log(counter_item);
		// console.log("p"+m_this.data("pos"));

		// get current counter for this section
		c_item = 999;
		if(counter_item["p"+m_this.data("pos")] == undefined){
			// console.log("pos_inside","still undefined");
			counter_item["p"+m_this.data("pos")] = 1;
			c_item = 1;
		}else{
			// console.log("pos_inside",counter_item["p"+m_this.data("pos")]);
			counter_item["p"+m_this.data("pos")] = parseInt(counter_item["p"+m_this.data("pos")]) + 1;
			c_item = counter_item["p"+m_this.data("pos")];
		}

		temp.find("select[name='det[0][pengujian][0][param]']").val(ddd);
		temp.find("input[name='det[0][pengujian][0][paket_id]']").val(paket_id);
		temp.find("select[name='det[0][pengujian][0][param]']").select2({
      // templateResult : formatSelection3,
      width:200
    });

		temp.find("select[name='det[0][pengujian][0][metode]']").select2();



		// console.log("data_Selected1",ddd);
		// console.log("data_Selected2",temp.find("select[name='det[0][pengujian][0][param]']").val());
		temp.find("select[name='det[0][pengujian][0][param]']").attr("name","det["+m_this.data("pos")+"][pengujian]["+c_item+"][param]");
		temp.find("input[name='det[0][pengujian][0][ket]']").attr("name","det["+m_this.data("pos")+"][pengujian]["+c_item+"][ket]");
		temp.find("select[name='det[0][pengujian][0][metode]']").attr("name","det["+m_this.data("pos")+"][pengujian]["+c_item+"][metode]");
		temp.find("input[name='det[0][pengujian][0][hidden_id]']").attr("name","det["+m_this.data("pos")+"][pengujian]["+c_item+"][hidden_id]");
		temp.find("input[name='det[0][pengujian][0][paket_id]']").attr("name","det["+m_this.data("pos")+"][pengujian]["+c_item+"][paket_id]");

		temp.appendTo(m_this.parent().find(".param_container"));
	}


	$("body").on("click",".param_btn",function (e) {
		m_this = $(this);
		console.log("asd",m_this.data("pos"));
		temp = cloned_item.clone("true","true");

		console.log(counter_item);
		console.log("p"+m_this.data("pos"));

		// get current counter for this section
		c_item = 999;
		if(counter_item["p"+m_this.data("pos")] == undefined){
			console.log("pos_inside","still undefined");
			counter_item["p"+m_this.data("pos")] = 1;
			c_item = 1;
		}else{
			console.log("pos_inside",counter_item["p"+m_this.data("pos")]);
			counter_item["p"+m_this.data("pos")] = parseInt(counter_item["p"+m_this.data("pos")]) + 1;
			c_item = counter_item["p"+m_this.data("pos")];
		}

		temp.find("select[name='det[0][pengujian][0][param]']").select2({
      // templateResult : formatSelection3,
      width:200
    });

		temp.find("select[name='det[0][pengujian][0][metode]']").select2();

		temp.find("select[name='det[0][pengujian][0][param]']").attr("name","det["+m_this.data("pos")+"][pengujian]["+c_item+"][param]");
		temp.find("input[name='det[0][pengujian][0][ket]']").attr("name","det["+m_this.data("pos")+"][pengujian]["+c_item+"][ket]");
		temp.find("select[name='det[0][pengujian][0][metode]']").attr("name","det["+m_this.data("pos")+"][pengujian]["+c_item+"][metode]");
		temp.find("input[name='det[0][pengujian][0][hidden_id]']").attr("name","det["+m_this.data("pos")+"][pengujian]["+c_item+"][hidden_id]");
		temp.find("input[name='det[0][pengujian][0][paket_id]']").attr("name","det["+m_this.data("pos")+"][pengujian]["+c_item+"][paket_id]");

		console.log(m_this.parent());
		console.log(m_this.parent().find(".param_container"));

		temp.appendTo(m_this.parent().find(".param_container"));
	});

	$("#add_detail").click(function () {
		counter += 1;
		//cloned = cloned.children("select").select2("destroy");
		cloned.addClass("last");
		cloned2.addClass("last2");

		temp = cloned.clone(true,true);
		temp2 = cloned2.clone(true,true);

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
		temp.find("input[name='det[0][ket_kondisi]']").attr("name","det[" + counter + "][ket_kondisi]");

		temp.find("input[name='det[0][pengujian_text]']").attr("name","det[" + counter + "][pengujian_text]");
		temp.find("input[name='det[0][metode_text]']").attr("name","det[" + counter + "][metode_text]");




		temp2.find("select[name='det[0][kodelab]']").attr("name","det[" + counter + "][kodelab]");
		temp2.find("input[name='det[0][komoditas]']").attr("name","det[" + counter + "][komoditas]");
		temp2.find("input[name='det[0][varietas]']").attr("name","det[" + counter + "][varietas]");
		temp2.find("input[name='det[0][jumlah]']").attr("name","det[" + counter + "][jumlah]");
		temp2.find("select[name='det[0][satuan]']").attr("name","det[" + counter + "][satuan]");
		temp2.find("select[name='det[0][kemasan]']").attr("name","det[" + counter + "][kemasan]");
		temp2.find("select[name='det[0][kondisi]']").attr("name","det[" + counter + "][kondisi]");
		temp2.find("select[name='det[0][pengujian]']").attr("name","det[" + counter + "][pengujian]");
		temp2.find("select[name='det[0][metode]']").attr("name","det[" + counter + "][metode]");
		temp2.find("textarea[name='det[0][keterangan]']").attr("name","det[" + counter + "][keterangan]");

		temp2.find("input[name='det[0][pengujian_text]']").attr("name","det[" + counter + "][pengujian_text]");
		temp2.find("input[name='det[0][metode_text]']").attr("name","det[" + counter + "][metode_text]");
		temp2.find("select[name='det[0][laboratorium]']").attr("name","det[" + counter + "][laboratorium]");
		temp2.find("input[name='det[0][hidden_id]']").attr("name","det[" + counter + "][hidden_id]");



		temp2.find(".param_btn").attr("data-pos",counter);
		temp2.find(".paket_btn").attr("data-pos",counter);

		temp.appendTo("#detailzzzs");
		temp2.appendTo("#detailzzzs");

		$("#detailzzzs").find(".last").find(".select2").select2();
		$("#detailzzzs").find(".last2").find(".select2").select2();
		$("#detailzzzs").find(".last2").find(".select3").select2({
      // templateResult : formatSelection3,
      width:200
    });

		temp.removeClass("last");
		temp2.removeClass("last2");
	});


	$("body").on("click",".remove_detail",function (e) {
		//$(this).remove();
		$(this).parent().parent().next().remove();
		$(this).parent().parent().remove();
	});

	$("body").on("change",".select-laboratorium",function (e) {
		//$(this).remove();
		// $(this).parent().parent().next().remove();
		// $(this).parent().parent().remove();
		// console.log($(this).parent().next().find("option"));
		// console.log($(this).parent().next().find("option[data-data2='"+$(this).val()+"']"));
		$(this).parent().next().find("option").hide();
		$(this).parent().next().find("option[data-data2 = '"+$(this).val()+"']").show();

		// console.log($(this).parent().next().find("option"));
    //$(this).parent().parent().next().find("option[data-data2 = '"+$(this).val()+"']").show();
	});

	// $("form").on("submit",function (e) {
	// 	$.each($(".multiple_check"),function (i,val) {
	// 		v = $(this).select2("val");
	// 		nm = $(this).attr("name");
	// 		nm = nm.substring(0, nm.length - 1);
	//
	// 		// console.log("nm",nm);
	//
	// 		$("input[name='" + nm + "_text]']").val(v.join(","));
	// 		// console.log("final value",$(this).select2("val"));
	// 		//console.log();
	// 	});
	//
	//
	// });

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
		picker = window.open('<?php echo base_url() ?>master/pelanggan_picker', '_blank', 'location=yes,height=570,width=1200,scrollbars=yes,status=yes');
	}

	function retrieve(argument) {
		var res = argument.split("#");
		//alert(decodeURI(res[1]));

		var final = decodeURI(res[1]).split("X.X");
		// console.log(final);

		$("input[name='id_pelanggan']").val(final[0]);
		$("input[name='nama']").val(final[1]);
		$("input[name='instansi_perusahaan']").val(final[2]);
		$("input[name='nik_npwp']").val(final[3]);
		$("input[name='alamat']").val(final[4]);
		$("input[name='telepon_fax']").val(final[5]);
		$("input[name='kontak_person']").val(final[6]);

		picker.close();
	}


	$(document).ready(function() {
						// $(".numberOnly").on("keydown",function (e) {
            //     // console.log("e",e);
						//
            //     // Allow: backspace, delete, tab, escape, enter and comma.
            //     if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190,188]) !== -1 ||
            //          // Allow: Ctrl/cmd+A
            //         (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            //          // Allow: Ctrl/cmd+C
            //         (e.keyCode == 67 && (e.ctrlKey === true || e.metaKey === true)) ||
            //          // Allow: Ctrl/cmd+X
            //         (e.keyCode == 88 && (e.ctrlKey === true || e.metaKey === true)) ||
            //          // Allow: home, end, left, right
            //         (e.keyCode >= 35 && e.keyCode <= 39)) {
            //              // let it happen, don't do anything
            //              return;
            //     }
            //     // Ensure that it is a number and stop the keypress
            //     if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            //         e.preventDefault();
            //         go = false;
            //     }
            // });

            // $(".numberOnly").keydown();

            // $(".numberOnly").on("keyup",function (e) {
            //     var go = true;
            //     var comma;
            //     var c;
						//
            //     base = $(this).val();
						//
						//
						//
            //     if(base.indexOf(',') !== -1){
            //         // console.log("base",typeof base);
            //         // var x = base +'';
            //         c = true;
            //         var temp = base.split(",");
            //         comma = temp[1];
            //         angka = temp[0];
            //     }else{
            //         angka = base;
            //     }
						//
            //     if(go){
            //         angka = angka.replace(/[.]/g,"");
						// 				angka += 10;
            //         var rev     = parseInt(angka, 10).toString().split('').reverse().join('');
						//
            //         if(isNaN(rev)) rev = 0;
						//
            //         var rev2    = '';
            //         for(var i = 0; i < rev.length; i++){
            //             rev2  += rev[i];
            //             if((i + 1) % 3 === 0 && i !== (rev.length - 1)){
            //                 rev2 += '.';
            //             }
            //         }
						//
            //         if(comma){
            //             var res = rev2.split('').reverse().join('');
            //             $(this).val(res+','+comma);
            //         }else{
            //             if(c){
            //                 $(this).val(rev2.split('').reverse().join('')+',');
            //             }else{
            //                 $(this).val(rev2.split('').reverse().join(''));
            //             }
						//
            //         }
						//
            //     }
            // });

            // $(".numberOnly").keyup();

						Inputmask.extendAliases({
						  rp: {
						            prefix: "",
						            groupSeparator: ".",
												radixPoint :",",
						            alias: "numeric",
						            placeholder: "0",
						            autoGroup: !0,
						            digits: 0,
						            digitsOptional: !1,
						            clearMaskOnLostFocus: !1
						        }
						});
						$(".numberOnly").inputmask({ alias : "rp"});

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

						$("body").on("keydown",".number",function (e) {
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

			// console.log(total);
			// console.log(uang_muka);

			$("input[name='sisa_pembayaran']").val(total - uang_muka);
			$("input[name='sisa_pembayaran']").trigger("keyup");

		});

		$(".print").on("click",function(e) {
			e.preventDefault();
			console.log($("[name='kop']").val());
			tgl = $("#tanggal_print").val();
			if(tgl){
				tgl = tgl.replace(new RegExp('/', 'g'), '.');
				//console.log(tgl);
				window.open($(this).attr("href") + "/" + $("[name='kop']:checked").val() + "/" + tgl, '_blank');
			}else{
				window.open($(this).attr("href") + "/" + $("[name='kop']:checked").val() + "/", '_blank');
			}

		})
	});
</script>

<script>
	$(".kontrakBiaya").on("keyup",function() {
		totalBiaya = 0;
		$.each($(".kontrakBiaya"),function(i,data){
			// console.log("v",$(this).val().replaceAll("\\.", ""));
			str = $(this).val();
			str = str.split('.').join("");
			if(str == "") str = 0;

			totalBiaya += parseInt(str);
		});

		// console.log(totalBiaya);

		$("input[name='total']").val(totalBiaya);
		$("input[name='total']").trigger("keyup");
	});

	$("input[name='total']").on("keyup",function() {
		total = $("input[name='total']").val();
		total = total.split('.').join("");

		uang_muka = $("input[name='uang_muka']").val();
		uang_muka = uang_muka.split('.').join("");

		console.log(total);
		console.log(uang_muka);

		$("input[name='sisa_pembayaran']").val(total - uang_muka);
		$("input[name='sisa_pembayaran']").trigger("keyup");
	});
</script>
