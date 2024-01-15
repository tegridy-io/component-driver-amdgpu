local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.driver_amdgpu;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('driver-amdgpu', params.namespace);

{
  'driver-amdgpu': app,
}
