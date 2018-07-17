<if @forums:rowcount;literal@ gt 0>
  <ul>
    <multiple name="forums">
      @forums.parent_name@
      <li>
        <a href="@forums.url@forum-view?forum_id=@forums.forum_id@" title="#forums-includelet.goto_forums_name#">@forums.name@</a>
        <if @forums.new_p;literal@ true>
          <span class="new_flag">
            <img src="/resources/acs-subsite/new.gif" align="absmiddle" border="0" alt="#forums-includelet.New#" align="baseline">
          </span>
        </if>
      </li>
    </multiple>
  </ul>
</if>
<else>
  #forums-includelet.No_Forums#
</else>


