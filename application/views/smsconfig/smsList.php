<div class="content-wrapper" style="min-height: 946px;">
    <section class="content-header">
        <h1>
            <i class="fa fa-gears"></i> <?php echo $this->lang->line('system_settings'); ?><small><?php echo $this->lang->line('setting1'); ?></small></h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs pull-right">
                        <br>
                    </ul>
                    <div class="tab-content">
                        
                        <div class="tab-pane active" id="tab_4">
                            <form role="form" id="msg_nineone" id="msg_nineone" action="<?php echo site_url('smsconfig/msgnineone') ?>" class="form-horizontal" method="post">
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-12 minheight170">
                                            <div class="col-md-7">
                                                <?php
                                                $msg_nineone_result = check_in_array('msg_nineone', $smslist);
                                                ?>
                                                <div class="form-group">
                                                    <label class="col-sm-5 control-label"><?php echo 'API Key'; ?></label>
                                                    <div class="col-sm-7">
                                                        <input type="text" class="form-control" name="api_id" value="<?php echo $msg_nineone_result->api_id; ?>">
                                                        <span class="text text-danger authkey_error"></span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-5 control-label"><?php echo 'Client ID'; ?></label>
                                                    <div class="col-sm-7">
                                                        <input type="text" class="form-control" name="authkey" value="<?php echo $msg_nineone_result->authkey; ?>">
                                                        <span class="text text-danger authkey_error"></span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-5 control-label"><?php echo $this->lang->line('sender_id'); ?></label>
                                                    <div class="col-sm-7">
                                                        <input type="text" class="form-control" name="senderid" value="<?php echo $msg_nineone_result->senderid; ?>">
                                                        <span class="text text-danger senderid_error"></span>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-5 control-label"><?php echo $this->lang->line('status'); ?></label>
                                                    <div class="col-sm-7">
                                                        <select class="form-control" name="msg_nineone_status">
                                                            <?php
                                                            foreach ($statuslist as $s_key => $s_value) {
                                                                ?>
                                                                <option 
                                                                    value="<?php echo $s_key; ?>"
                                                                    <?php
                                                                    if ($msg_nineone_result->is_active == $s_key) {
                                                                        echo "selected=selected";
                                                                    }
                                                                    ?>
                                                                    ><?php echo $s_value; ?></option>
                                                                    <?php
                                                                }
                                                                ?>
                                                        </select>
                                                        <span class=" text text-danger clickatell_api_id_error"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-5 text text-center disblock">
                                                <a href="http://www.supersolutions.pk/" target="_blank"><img src="<?php echo base_url() ?>backend/images/msg91.png"><p>www.supersolutions.pk</p></a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer">
                                    <button type="submit" class="btn btn-primary col-md-offset-3"><?php echo $this->lang->line('save'); ?></button>&nbsp;&nbsp;<span class="msg_nineone_loader"></span>
                                </div>
                            </form>
                        </div>
                        <!-- /.tab-pane -->
                        

                                <div class="box-footer">
                                    
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /.tab-content -->
                </div>
            </div>
        </div>  
    </section>
</div>

<?php

function check_in_array($find, $array) {

    foreach ($array as $element) {
        if ($find == $element->type) {
            return $element;
        }
    }
    $object = new stdClass();
    $object->id = "";
    $object->type = "";
    $object->api_id = "";
    $object->username = "";
    $object->url = "";
    $object->name = "";
    $object->contact = "";
    $object->password = "";
    $object->authkey = "";
    $object->senderid = "";
    $object->is_active = "";
    return $object;
}
?>


<script type="text/javascript">
    var img_path = "<?php echo base_url() . '/backend/images/loading.gif' ?>";
    $("#clickatell").submit(function (e) {
        $("[class$='_error']").html("");

        $(".clickatell_loader").html('<img src="' + img_path + '">');
        var url = $(this).attr('action'); // the script where you handle the form input.

        $.ajax({
            type: "POST",
            dataType: 'JSON',
            url: url,
            data: $("#clickatell").serialize(), // serializes the form's elements.
            success: function (data, textStatus, jqXHR)
            {
                if (data.st === 1) {
                    $.each(data.msg, function (key, value) {
                        $('.' + key + "_error").html(value);
                    });
                } else {
                    successMsg(data.msg);
                }
                $(".clickatell_loader").html("");

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                $(".clickatell_loader").html("");
                //if fails      
            }
        });

        e.preventDefault(); // avoid to execute the actual submit of the form.
    });

    $("#twilio").submit(function (e) {
        $("[class$='_error']").html("");

        $(".twilio_loader").html('<img src="' + img_path + '">');
        var url = $(this).attr('action'); // the script where you handle the form input.

        $.ajax({
            type: "POST",
            dataType: 'JSON',
            url: url,
            data: $("#twilio").serialize(), // serializes the form's elements.
            success: function (data, textStatus, jqXHR)
            {
                if (data.st === 1) {
                    $.each(data.msg, function (key, value) {
                        $('.' + key + "_error").html(value);
                    });
                } else {
                    successMsg(data.msg);
                }
                $(".twilio_loader").html("");

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                $(".twilio_loader").html("");
                //if fails      
            }
        });

        e.preventDefault(); // avoid to execute the actual submit of the form.
    });


    $("#custom").submit(function (e) {
        $("[class$='_error']").html("");

        $(".custom_loader").html('<img src="' + img_path + '">');
        var url = $(this).attr('action'); // the script where you handle the form input.

        $.ajax({
            type: "POST",
            dataType: 'JSON',
            url: url,
            data: $("#custom").serialize(), // serializes the form's elements.
            success: function (data, textStatus, jqXHR)
            {
                if (data.st === 1) {
                    $.each(data.msg, function (key, value) {
                        $('.' + key + "_error").html(value);
                    });
                } else {
                    successMsg(data.msg);
                }
                $(".custom_loader").html("");

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                $(".custom_loader").html("");
                //if fails      
            }
        });

        e.preventDefault(); // avoid to execute the actual submit of the form.
    });

    $("#msg_nineone").submit(function (e) {
        $("[class$='_error']").html("");

        $(".msg_nineone_loader").html('<img src="' + img_path + '">');
        var url = $(this).attr('action'); // the script where you handle the form input.

        $.ajax({
            type: "POST",
            dataType: 'JSON',
            url: url,
            data: $("#msg_nineone").serialize(), // serializes the form's elements.
            success: function (data, textStatus, jqXHR)
            {
                if (data.st === 1) {
                    $.each(data.msg, function (key, value) {
                        $('.' + key + "_error").html(value);
                    });
                } else {
                    successMsg(data.msg);
                }
                $(".msg_nineone_loader").html("");

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                $(".msg_nineone_loader").html("");
                //if fails      
            }
        });

        e.preventDefault(); // avoid to execute the actual submit of the form.
    });

    $("#smscountry").submit(function (e) {
        $("[class$='_error']").html("");

        $(".smscountry_loader").html('<img src="' + img_path + '">');
        var url = $(this).attr('action'); // the script where you handle the form input.

        $.ajax({
            type: "POST",
            dataType: 'JSON',
            url: url,
            data: $("#smscountry").serialize(), // serializes the form's elements.
            success: function (data, textStatus, jqXHR)
            {
                if (data.st === 1) {
                    $.each(data.msg, function (key, value) {
                        $('.' + key + "_error").html(value);
                    });
                } else {
                    successMsg(data.msg);
                }
                $(".smscountry_loader").html("");

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                $(".msg_nineone_loader").html("");
                //if fails      
            }
        });

        e.preventDefault(); // avoid to execute the actual submit of the form.
    });


    $("#text_local").submit(function (e) {
        $("[class$='_error']").html("");
        $(".text_local_loader").html('<img src="' + img_path + '">');
        var url = $(this).attr('action'); // the script where you handle the form input.
        $.ajax({
            type: "POST",
            dataType: 'JSON',
            url: url,
            data: $("#text_local").serialize(), // serializes the form's elements.
            success: function (data, textStatus, jqXHR)
            {
                if (data.st === 1) {
                    $.each(data.msg, function (key, value) {
                        $('.' + key + "_error").html(value);
                    });
                } else {
                    successMsg(data.msg);
                }
                $(".text_local_loader").html("");

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                $(".text_local_loader").html("");
                //if fails      
            }
        });

        e.preventDefault(); // avoid to execute the actual submit of the form.
    });


</script>


