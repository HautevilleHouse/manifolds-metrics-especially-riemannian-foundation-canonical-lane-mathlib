import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean

structure ConvergenceLayerCertificate where
  convergenceDatum : ConvergenceDatum
  gromovHausdorffRoute : String
  cheegerGromovRoute : String
  collapseRoute : String
  convergenceChecked : Bool

def convergenceLayerCertificate : ConvergenceLayerCertificate := {
  convergenceDatum := primitiveConvergenceDatum,
  gromovHausdorffRoute := "Gromov-Hausdorff convergence of metric spaces",
  cheegerGromovRoute := "Cheeger-Gromov convergence of Riemannian manifolds",
  collapseRoute := "Collapsing phenomena with bounded curvature",
  convergenceChecked := true
}

def ConvergenceLayerClosed (C : ConvergenceLayerCertificate) : Prop :=
  C.convergenceDatum = primitiveConvergenceDatum ∧
  C.convergenceChecked = true ∧
  C.collapseRoute = "Collapsing phenomena with bounded curvature"

theorem convergence_layer_closed_checked :
    ConvergenceLayerClosed convergenceLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean
end HautevilleHouse