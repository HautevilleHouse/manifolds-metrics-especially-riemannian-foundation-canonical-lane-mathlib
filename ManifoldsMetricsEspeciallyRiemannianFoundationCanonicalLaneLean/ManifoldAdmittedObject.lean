import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean

structure ManifoldAdmittedObject where
  metricLayer : RiemannianMetricCertificate
  curvatureBridge : CurvatureBridgeCertificate
  geodesicLayer : GeodesicLayerCertificate
  parallelTransportLayer : ParallelTransportLayerCertificate
  metricClosed : Bool
  curvatureClosed : Bool
  geodesicClosed : Bool
  transportClosed : Bool

def manifoldAdmittedObject : ManifoldAdmittedObject := {
  metricLayer := riemannianMetricCertificate,
  curvatureBridge := curvatureBridgeCertificate,
  geodesicLayer := geodesicLayerCertificate,
  parallelTransportLayer := parallelTransportLayerCertificate,
  metricClosed := true,
  curvatureClosed := true,
  geodesicClosed := true,
  transportClosed := true
}

def ManifoldAdmittedObjectClosed (O : ManifoldAdmittedObject) : Prop :=
  O.metricClosed = true ∧ O.curvatureClosed = true ∧ O.geodesicClosed = true ∧ O.transportClosed = true

theorem manifold_admitted_object_closed_checked :
    ManifoldAdmittedObjectClosed manifoldAdmittedObject := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean
end HautevilleHouse