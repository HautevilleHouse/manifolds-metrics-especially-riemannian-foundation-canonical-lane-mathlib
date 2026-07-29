import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean.MetricAdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ A.gateWitness

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) A.gateWitness

end ManifoldsMetricsEspeciallyRiemannianFoundationCanonicalLaneLean
end HautevilleHouse