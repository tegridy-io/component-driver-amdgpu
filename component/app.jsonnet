local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.driver_amdgpu;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('driver-amdgpu', params.namespace.name);

local appPath =
  local project = std.get(std.get(app, 'spec', {}), 'project', 'syn');
  if project == 'syn' then 'apps' else 'apps-%s' % project;

{
  ['%s/driver-amdgpu' % appPath]: app,
}
