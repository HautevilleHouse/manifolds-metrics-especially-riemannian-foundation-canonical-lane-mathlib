import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean

structure MetricDatum where
  smoothness : String
  signature : String
  dimension : Nat

def primitiveMetricDatum : MetricDatum := {
  smoothness := "C^infty",
  signature := "Riemannian",
  dimension := 0
}

structure CurvatureDatum where
  riemannType : String
  ricciType : String
  scalarType : String

def primitiveCurvatureDatum : CurvatureDatum := {
  riemannType := "(1,3)-tensor",
  ricciType := "(0,2)-tensor",
  scalarType := "scalar function"
}

structure CompletenessDatum where
  geodesicComplete : Bool
  metricComplete : Bool

def primitiveCompletenessDatum : CompletenessDatum := {
  geodesicComplete := false,
  metricComplete := false
}

structure SectionalCurvatureDatum where
  curvatureFunction : String

def primitiveSectionalCurvatureDatum : SectionalCurvatureDatum := {
  curvatureFunction := "sec_p"
}

structure ConvergenceDatum where
  gromovHausdorffLimit : String

def primitiveConvergenceDatum : ConvergenceDatum := {
  gromovHausdorffLimit := "compact"
}

end ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean
end HautevilleHouse