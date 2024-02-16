// main template for driver-amdgpu
local kap = import 'lib/kapitan.libjsonnet';
local kube = import 'lib/kube.libjsonnet';
local inv = kap.inventory();
// The hiera parameters for the component
local params = inv.parameters.driver_amdgpu;

local namespace = kube.Namespace(params.namespace.name) {
  metadata+: {
    annotations+: params.namespace.annotations,
    labels+: params.namespace.labels,
  },
};

// Define outputs below
{
  [if params.discovery.enabled then '00_namespace']: namespace,
}
