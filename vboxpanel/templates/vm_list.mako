<!DOCTYPE html>
<html>
<head>
  <title>Virtual machines of ${username}@${hostname}</title>
</head>
<body>

  <h1>Virtual machines of ${username}@${hostname}</h1>

  <ul>
% for vm in vms:
    <li>
      ${vm.name}
%     if vm.running:
 (running)
%     else:
 (not running)
%     endif
    </li>
% endfor
  </ul>

</body>
</html>
