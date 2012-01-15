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
    </li>
% endfor
  </ul>

</body>
</html>
