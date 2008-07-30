# The forums includelet can oly be bound to a single forum package.  If you want
# the .LRN-style functionality you'll have to write a custom portlet and the binding logic
# to go with it (the applet functionality).

if { [acs_privacy::privacy_control_enabled_p] } {
    set private_data_restriction [db_map dbqd.forums-portlet.www.forums-portlet.restrict_by_private_data_priv]
} else {
    set private_data_restriction ""
}

set user_id [ad_conn user_id]

db_multirow forums select_forums {}
