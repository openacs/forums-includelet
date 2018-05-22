<ul>
<multiple name="forums">
  <li>
    <a href="@url@admin/forum-edit?forum_id=@forums.forum_id@">@forums.name@</a>
<if @forums.enabled_p;literal@ false><b>(#forums-includelet.disabled#)</b></if>
  </li>
</multiple>
</ul>
<ul>
  <li>
    <a href="@url@admin/forum-new?name=@encoded_default_name@">#forums-includelet.New_Forum#</a>
  </li>
</ul>
