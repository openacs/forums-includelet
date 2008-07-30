ad_library {

    Forums includelet for use with the layout manager

    @creation-date 2008-07-16
    @author Don Baccus <dhogaza@pacifier.com>
    @version $Id$
}

namespace eval forums_includelet::install {}

ad_proc -private forums_includelet::install::package_install {} {
    Package installation callback proc
} {

    db_transaction {

        # Admin includelet
        layout::includelet::new \
            -name forums_admin_includelet \
            -description "Displays forums admin includelet" \
            -title #forums-includelet.admin_pretty_name# \
            -application forums \
            -template /packages/forums-includelet/lib/forums-admin-includelet \
            -required_privilege admin 

        # User includelet
        layout::includelet::new \
            -name forums_includelet \
            -description "Displays the forums includelet" \
            -title #forums-includelet.pretty_name# \
            -application forums \
            -template /packages/forums-includelet/lib/forums-includelet 
    }
}

ad_proc -private forums_includelet::install::package_uninstall {} {
    Package uninstallation callback proc
} {
    layout::includelet::delete -name forums_includelet
    layout::includelet::delete -name forums_admin_includelet
}

