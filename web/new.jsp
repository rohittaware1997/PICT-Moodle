
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
         <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script language="javascript">

        $.fn.MessageBox = function(msg)
        {
            alert(msg);
            var table = $('#table-data')[0];
            $(table).delegate ('.tr_clone_add', 'click', function () {
            var thisRow = $(this).closest('tr')[0];
            $(thisRow).clone().insertAfter(thisRow).find('input:text').val('');
        };
        );
        };
        
        $(document).ready(function() {
             alert("Hello");
  $('#btn').click(function() {
    alert("Hello");
    var table = $('#table-data')[0];
            $(table).delegate ('.tr_clone_add', 'click', function () {
            var thisRow = $(this).closest('tr')[0];
            $(thisRow).clone().insertAfter(thisRow).find('input:text').val('');
        };
        );
    
  });
});

            </script>

    </head>
    <body>
     <table width="100%" border="0" cellspacing="0" cellpadding="0" id="table-data">
    <tr>
        <td>Name</td>
        <td>Location</td>
        <td>From</td>
        <td>To</td>
        <td>Add</td>
    </tr>
    <tr class="tr_clone">
        <td><input type="text" autofocus placeholder="who" name="who"></td>
        <td><input type="text" placeholder="location" name="location" ></td>
        <td><input type="text" placeholder="Start Date" name="datepicker_start" class="datepicker"></td>
        <td><input type="text" placeholder="End Date" name="datepicker_end" class="datepicker"></td>
        <td><input type="button" onclick=" $(this).MessageBox('msg');" name="add" value="Add" class="tr_clone_add"></td>
   <td><input type="button" id ="btn" name="add" value="Addddd" class="tr_clone_add"></td>
    
    </tr>
</table>
    </body>
</html>
