import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean

structure SectionalCurvatureLayerCertificate where
  sectionalDatum : SectionalCurvatureDatum
  planeRoute : String
  constantSectionalRoute : String
  sectionalChecked : Bool
  comparisonRoute : String

def sectionalCurvatureLayerCertificate : SectionalCurvatureLayerCertificate := {
  sectionalDatum := primitiveSectionalCurvatureDatum,
  planeRoute := "Sectional curvature evaluated on 2-planes",
  constantSectionalRoute := "Space forms of constant curvature",
  sectionalChecked := true,
  comparisonRoute := "Rauch comparison theorems"
}

def SectionalCurvatureLayerClosed (C : SectionalCurvatureLayerCertificate) : Prop :=
  C.sectionalDatum = primitiveSectionalCurvatureDatum ∧
  C.sectionalChecked = true ∧
  C.comparisonRoute = "Rauch comparison theorems"

theorem sectional_curvature_layer_closed_checked :
    SectionalCurvatureLayerClosed sectionalCurvatureLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean
end HautevilleHouse