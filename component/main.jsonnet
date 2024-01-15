// main template for driver-amdgpu
local kap = import 'lib/kapitan.libjsonnet';
local kube = import 'lib/kube.libjsonnet';
local inv = kap.inventory();
// The hiera parameters for the component
local params = inv.parameters.driver_amdgpu;

// Define outputs below
{
}
