$(document).ready(function(){
    $(".btn-circle").click(function(){
        let addedTableHtml = '';
        addedTableHtml += '<tr>';
        addedTableHtml += '<td bgcolor="#0ccff2" colspan="2" style="text-align: left;">';
        addedTableHtml += '  <label style="font-size: 18px">设备信息</label>';
        addedTableHtml += '</td>';
        addedTableHtml += '</tr>';
        addedTableHtml += '<tr>';
        addedTableHtml += '<td bgcolor="#fff"><label>设备名</label></td>';
        addedTableHtml += '  <td bgcolor="#fff" class="td-input">';
        addedTableHtml += '  <input type="text" name="equipment_name" class="input-text" />';
        addedTableHtml += '</td>';
        addedTableHtml += '</tr>';
        addedTableHtml += '<tr>';
        addedTableHtml += '<td bgcolor="#fff"><label>设备类型</label></td>';
        addedTableHtml += '  <td bgcolor="#fff" class="td-input">';
        addedTableHtml += '  <input type="text" class="input-text" name="equipment_type" />';
        addedTableHtml += '</td>';
        addedTableHtml += '</tr>';
        addedTableHtml += '<tr>';
        addedTableHtml += '<td bgcolor="#fff"><label>购进数量</label></td>';
        addedTableHtml += '  <td bgcolor="#fff" class="td-input">';
        addedTableHtml += '  <input type="text" class="input-text" name="equipment_count" />';
        addedTableHtml += '</td>';
        addedTableHtml += '</tr>';
        addedTableHtml += '<tr>';
        addedTableHtml += '  <td bgcolor="#fff"><label>购买预算</label></td>';
        addedTableHtml += '  <td bgcolor="#fff" class="td-input"><input type="text" class="input-text"  align="center" name="equipment_budget" /></td>';
        addedTableHtml += '</tr>';
        addedTableHtml += '<tr>';
        addedTableHtml += '  <td bgcolor="#fff"><label>申请日期</label></td>';
        addedTableHtml += '  <td bgcolor="#fff" class="td-input"><input type="date" class="input-text"  align="center" name="buy_date" /></td>';
        addedTableHtml += '</tr>';
        $(".bordered").append(addedTableHtml);
    });
});