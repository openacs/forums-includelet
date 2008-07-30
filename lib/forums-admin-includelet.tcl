ad_page_contract {
    The display logic for the forums admin includelet
    
    @author Ben Adida (ben@openforce)
    @cvs_id $Id$
}

db_multirow forums select_forums {
    select forum_id, name, enabled_p
    from forums_forums
    where package_id = :package_id
}

set url [lindex [site_node::get_url_from_object_id -object_id $package_id] 0]

set package_id [ad_conn package_id]
set default_name [db_string select_package_name {
    select instance_name from apm_packages where package_id= :package_id
}]

append default_name " [_ forums-includelet.Forum]"

set encoded_default_name [ns_urlencode $default_name]

ad_return_template
