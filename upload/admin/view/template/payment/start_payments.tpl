<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-start-payments" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if (isset($error['error_warning'])) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error['error_warning']; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-start-payments" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="entry_live_open_key"><?php echo $entry_live_open_key; ?></label>
            <div class="col-sm-10">
              <input type="text" name="start_payments_entry_live_open_key" value="<?php echo $start_payments_entry_live_open_key; ?>" placeholder="<?php echo $entry_live_open_key; ?>" id="entry-username" class="form-control"/>
              <?php if (isset($error['start_payments_entry_live_open_key'])) { ?>
              <div class="text-danger"><?php echo $error['start_payments_entry_live_open_key']; ?></div>
              <?php } ?>
            </div>
          </div>
            <div class="form-group required">
            <label class="col-sm-2 control-label" for="entry_live_secret_key"><?php echo $entry_live_secret_key; ?></label>
            <div class="col-sm-10">
              <input type="text" name="start_payments_entry_live_secret_key" value="<?php echo $start_payments_entry_live_secret_key; ?>" placeholder="<?php echo $entry_live_secret_key; ?>" id="entry_live_secret_key" class="form-control"/>
              <?php if (isset($error['start_payments_entry_live_secret_key'])) { ?>
              <div class="text-danger"><?php echo $error['start_payments_entry_live_secret_key']; ?></div>
              <?php } ?>
            </div>
          </div>
            <div class="form-group required">
            <label class="col-sm-2 control-label" for="entry_test_open_key"><?php echo $entry_test_open_key; ?></label>
            <div class="col-sm-10">
              <input type="text" name="start_payments_entry_test_open_key" value="<?php echo $start_payments_entry_test_open_key; ?>" placeholder="<?php echo $entry_test_open_key; ?>" id="entry_test_open_key" class="form-control"/>
              <?php if (isset($error['start_payments_entry_live_open_key'])) { ?>
              <div class="text-danger"><?php echo $error['start_payments_entry_live_open_key']; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="entry_test_secret_key"><?php echo $entry_test_secret_key; ?></label>
            <div class="col-sm-10">
              <input type="text" name="start_payments_entry_test_secret_key" value="<?php echo $start_payments_entry_test_secret_key; ?>" placeholder="<?php echo $entry_test_secret_key; ?>" id="entry_test_secret_key" class="form-control"/>
              <?php if (isset($error['start_payments_entry_live_secret_key'])) { ?>
              <div class="text-danger"><?php echo $error['start_payments_entry_live_secret_key']; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-live-demo"><span data-toggle="tooltip" title="<?php echo $help_test; ?>"><?php echo $entry_test; ?></span></label>
            <div class="col-sm-10">
              <select name="start_payments_test" id="input-live-demo" class="form-control">
                <?php if ($start_payments_test) { ?>
                <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                <option value="0"><?php echo $text_no; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_yes; ?></option>
                <option value="0" selected="selected"><?php echo $text_no; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-order-status"><?php echo $entry_order_status; ?></label>
            <div class="col-sm-10">
              <select name="start_payments_order_status_id" id="input-order-status" class="form-control">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $start_payments_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-transaction"><?php echo $entry_transaction; ?></label>
            <div class="col-sm-10">
              <select name="start_payments_transaction" id="input-transaction" class="form-control">
                <?php if (!$start_payments_transaction) { ?>
                <option value="0" selected="selected"><?php echo $text_authorization_capture; ?></option>
                <?php } else { ?>
                <option value="0"><?php echo $text_authorization_capture; ?></option>
                <?php } ?>
                <?php if ($start_payments_transaction) { ?>
                <option value="1" selected="selected"><?php echo $text_authorization_only; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_authorization_only; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-total"><span data-toggle="tooltip" title="<?php echo $help_total; ?>"><?php echo $entry_total; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="start_payments_total" value="<?php echo $start_payments_total; ?>" placeholder="<?php echo $entry_total; ?>" id="input-total" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="start_payments_sort_order" value="<?php echo $start_payments_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-geo-zone"><?php echo $entry_geo_zone; ?></label>
            <div class="col-sm-10">
              <select name="start_payments_geo_zone_id" id="input-geo-zone" class="form-control">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $start_payments_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="start_payments_status" id="input-status" class="form-control">
                <?php if ($start_payments_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>