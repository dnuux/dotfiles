let buftabs = {
    // Update the tabs
    update: function ()
    {
        if (!options["buftabs"])
            return;

        // Get buftabbar
        var btabs = commandline.widgets.statusbar.buftabs;
        var visibleTabs = tabs.visibleTabs;
        var position=0, selpos;

        // Make sure we have an appropriate amount of labels
        while (btabs.childNodes.length > visibleTabs.length)
        {
            btabs.removeChild(btabs.lastChild);
        }

        while (btabs.childNodes.length < visibleTabs.length)
        {
            let label = document.createElement("label");
            btabs.appendChild(label);

            label.addEventListener("click", function (ev)
            {
                if (ev.button == 0)
                    tabs.select(this.tabpos);
                else if (ev.button == 1)
                    tabs.remove(tabs.getTab(this.tabpos), 1, false, 0);
            }, false);
        }

        // Create the new tabs
        for (let [i, tab] in iter(visibleTabs))
        {
            // Create label
            let browser = tab.linkedBrowser;
            let label = btabs.childNodes[i];

            // Hook on load
            if (browser.webProgress.isLoadingDocument)
            {
                browser._buftabs_label = label;
                browser.contentDocument.addEventListener("load", function ()
                {
                    buftabs.fillLabel(this._buftabs_label, this);
                }, false);
            }

            // Fill label
            label.tabpos = i;
            buftabs.fillLabel(label, browser);

            if (tabs.index(null, true) == label.tabpos)
            {
                selpos = [position, label.clientWidth+position];
            }

            position += label.clientWidth;
        }

        // Scroll
        if (selpos[0] < btabs.scrollLeft || selpos[1] > btabs.scrollLeft+btabs.clientWidth)
            btabs.scrollLeft = selpos[0];

        // Show the entire line if possible
        if (btabs.scrollWidth == btabs.clientWidth)
            btabs.scrollLeft = 0;
    },

    // Fill a label with browser content
    fillLabel: function(label, browser)
    {
        var maxlength = options.get("buftabs-maxlength").get();
        var tabvalue;

        // Get title
        if (browser.webProgress.isLoadingDocument)
        {
            tabvalue = "Loading...";
        } else {
            tabvalue = browser.contentTitle || "Untitled";
        }

        // Check length
        if (maxlength > 0 && tabvalue.length > maxlength)
            tabvalue = tabvalue.substr(0, maxlength-3)+"...";

        // Bookmark icon
        if (bookmarkcache.isBookmarked(browser.contentDocument.location.href))
            tabvalue += "\u2764";

        // Brackets and index
        tabvalue = "["+(label.tabpos+1)+"-"+tabvalue+"]";

        label.setAttribute("value", tabvalue);

        // Set the correct highlight group
        if (tabs.index(null, true) == label.tabpos)
            label.setAttribute("style", "background: #343434; color: #9fbc00;");
        else
            label.setAttribute("style", "color: #9fbc00;");
    },

    // Create the horizontal box for adding the tabs to
    createBar: function()
    {
        let id = "dactyl-statusline-field-buftabs";
        if (document.getElementById(id))
            return;

        let widget = util.xmlToDom(
            '<hbox xmlns="'+XUL+'" highlight="BufTabs" id="'+id+'" flex="1" style="overflow: hidden"/>',
            document);
        statusline.widgets.url.parentNode.insertBefore(
            widget, statusline.widgets.url.nextSibling);
        commandline.widgets.addElement({
            name: "buftabs",
            getGroup: function () this.statusbar,
            getValue: function () statusline.visible && options["buftabs"],
            noValue: true
        });
    }
};

/// Attach to events in order to update the tabline
var tabContainer = window.getBrowser().mTabContainer;
["TabMove", "TabOpen", "TabClose", "TabSelect"].forEach(function (event) {
    tabContainer.addEventListener(event, function (event) {
        buftabs.update();
    }, false);
});

document.getElementById("appcontent").addEventListener("load", function (event) {
    buftabs.update();
}, true);

/// Initialise highlight groups
highlight.loadCSS("!BufTabs background: #ff0000; color: inherit;");
highlight.loadCSS("!BufTab");
highlight.loadCSS("!BufTabSelected   font-weight: bold;");

/// Options
group.options.add(["buftabs", "bt"],
        "Control whether to use buftabs in the statusline",
        "boolean", true, 
        {
            setter: function (value)
            {
                if (value)
                    buftabs.createBar();
                commandline.widgets.updateVisibility();
                buftabs.update();
                return value;
            }
        });

group.options.add(["buftabs-maxlength", "btm"],
        "Max length of an entry in the buftabs list",
        "number", "25", 
        {
            setter: function (value)
            {
                buftabs.update();
                return value;
            }
        });
