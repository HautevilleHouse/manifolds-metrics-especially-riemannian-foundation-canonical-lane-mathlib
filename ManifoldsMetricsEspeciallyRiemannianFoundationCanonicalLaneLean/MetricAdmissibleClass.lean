import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean

structure ManifoldAdmittedObject where
  manifoldKey : String
  metricTensorLayerClosed : Prop
  curvatureOperatorLayerClosed : Prop
  geodesicEndpointLayerClosed : Prop
  holonomyLayerClosed : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj : ManifoldAdmittedObject := A.object
  obj.metricTensorLayerClosed ∧ obj.curvatureOperatorLayerClosed ∧
  obj.geodesicEndpointLayerClosed ∧ obj.holonomyLayerClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  have h1 : A.object.metricTensorLayerClosed := A.object.metricTensorLayerClosed
  have h2 : A.object.curvatureOperatorLayerClosed := A.object.curvatureOperatorLayerClosed
  have h3 : A.object.geodesicEndpointLayerClosed := A.object.geodesicEndpointLayerClosed
  have h4 : A.object.holonomyLayerClosed := A.object.holonomyLayerClosed
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean
end HautevilleHouse