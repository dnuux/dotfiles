function NoscriptPentadactyl() {
  var popup = (
    window.noscriptOverlay.stickyUI &&
    window.noscriptOverlay.ns.getPref("stickyUI.onKeyboard") &&
    (popup = window.noscriptOverlay.stickyUI)
  ) || document.getElementById("noscript-status-popup");
  popup.addEventListener('popupshown', popupshown, true);
  popup.addEventListener('popuphidden', popuphidden, true);

  function popupshown(event){
    if (event.target == popup){
      window.addEventListener("keypress", keypress, true);
    }
  }

  function popuphidden(event){
    if (event.target == popup){
      window.removeEventListener("keypress", keypress, true);
    }
  }

  function keypress(event){
    var keyCode = null;
    switch(String.fromCharCode(event.which)){
      case "j":
        keyCode = 40;
        break;
      case "k":
        keyCode = 38;
        break;
      case "l":
        keyCode = 39;
        break;
      case "h":
        keyCode = 37;
        break;
      case "G":
        keyCode = 35;
        break;
      case "g":
        keyCode = 36;
        break;
      default:
        break;
    }

    if (keyCode){
      var newEvent = window.document.createEvent('KeyboardEvent');
      newEvent.initKeyEvent(
        "keypress", true, true, null, false, false, false, false, keyCode, 0);
      popup.dispatchEvent(newEvent);
    }
  }

  return {
    info: function(){
      dactyl.echo(util.objectToString(window.noscriptOverlay.getSites(), true));
    },

    popup: function(){
      window.noscriptOverlay.showUI();
    },

    toggletemp: function(){
      window.noscriptOverlay.toggleCurrentPage(3);
    },

    toggleperm: function(){
      const ns = window.noscriptOverlay.ns;
      const url = ns.getQuickSite(content.document.documentURI, /*level*/ 3);
      window.noscriptOverlay.safeAllow(url, !ns.isJSEnabled(url), false);
    },

    _execute: function(args){
      var name = args.shift();
      var cmd = nsv[name];
      if (!cmd){
        dactyl.echoerr('Unsupported noscript command: ' + name);
        return false;
      }
      return cmd(args);
    },

    _completer: function(context){
      var commands = [];
      for (var name in nsv){
        if (name.indexOf('_') !== 0 && nsv.hasOwnProperty(name)){
          commands.push(name);
        }
      }
      context.completions = [[c, ''] for each (c in commands)];
    }
  };
}

var nsv = NoscriptPentadactyl();

group.commands.add(["nos[cript]"],
  "Execute noscript commands",
  function(args) { nsv._execute(args); },
  { argCount: '1', completer: nsv._completer }
);
