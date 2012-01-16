<!DOCTYPE html>
<html>
<head>
  <title>Virtual machines of ${username}@${hostname}</title>
  <link rel="stylesheet" href="${request.application_url}/static/style.css" type="text/css" />
</head>
<body>

  <h1>Virtual machines of ${username}@${hostname}</h1>

  <ul>
% for vm in vms:
    <li>
      ${vm.name}
      <span class="status-${'running' if vm.running else 'not-running'}">
        (${'running' if vm.running else 'not running'})
      </span>
%     if vm.vnc_screen:
      - VNC screen ${vm.vnc_screen}
%         if vm.running:
      <br><img src="${request.route_url('screenshot', name=vm.name)}">
%         endif
%     endif
    </li>
% endfor
  </ul>

</body>
</html>
