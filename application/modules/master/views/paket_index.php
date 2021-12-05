<link rel="stylesheet" href="<?php echo base_url('assets/adminlte')?>/bower_components/font-awesome/css/font-awesome.min.css">
<style type="text/css">
	.pilih:before{
		content: "Pilih"
	}
</style>
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>

<?php echo $output; ?>

<?php foreach($js_files as $file): ?>
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>

<script type="text/javascript">
	$("body").on("click",".pilih",function (e) {
		setTimeout(function(){ window.opener.retrieve(window.location.href)}, 100);
	});
</script>

<script src="<?php echo base_url("assets/"); ?>jquery.inputmask.bundle.min.js"></script>
<script>
    // counter
        let counterParam = 0;
    // end of counter

  $(function () {

    // create master
        const master = $( ".master_detail" ).clone(true,true);
        $(".master_detail").remove();
    // end of create master

    // dom interaction
        $(".btn_param_add").click(function(){
            addNewParam(null);
        });
    // end of dom interaction

    //functions
        const addNewParam = function(obj){
            var temp = master.clone(true,true);

            console.log(temp);

            // set value
            if(obj != null){
                temp.find(".select2").val(obj.id_parameter_pengujian);
                temp.find("input").val(obj.bmr);
            }

            //set select2
            temp.find(".select2").select2({
                // templateResult : formatSelection3,
                width:500
            });;


            //change name
            temp.find(".select2").attr("name","det["+counterParam+"][id_parameter_pengujian]");
            temp.find("input").attr("name","det["+counterParam+"][bmr]");

            // append to placeholder
            $(".placeholder_detail").append(temp);

            // update counterParam
            counterParam += 1;
        }

    // end of functions


     // existing
     if(existing){
            for (let index = 0; index < existing.length; index++) {
                const element = existing[index];
                addNewParam(element);
            }
        }
    // end of existing
  });

  

</script>