import CombinatoricsComputerScienceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure Graph where
  vertices : Type
  edges : vertices → vertices → Prop

structure FiniteGraph extends Graph where
  finiteVertices : Fintype vertices

definition GraphColoringProblem (G : FiniteGraph) (k : ℕ) : Prop :=
  ∃ color : G.vertices → Fin k, ∀ u v : G.vertices, G.edges u v → color u ≠ color v

theorem four_color_theorem (G : FiniteGraph) (planar : Planar G) : GraphColoringProblem G 4 := by
  sorry

structure Clique (G : Graph) (n : ℕ) : Prop where
  verticesSubset : Finset G.vertices
  size : verticesSubset.card = n
  complete : ∀ v ∈ verticesSubset, ∀ w ∈ verticesSubset, v ≠ w → G.edges v w

theorem ramsey_theorem (r s : ℕ) : ∃ N : ℕ, ∀ (G : Graph) (f : G.vertices → Fin 2), finiteVertices G → Fintype.card G.vertices ≥ N →
  (∃ (H : Clique G r), ∀ v ∈ H.verticesSubset, f v = 0) ∨ (∃ (H : Clique G s), ∀ v ∈ H.verticesSubset, f v = 1) := by
  sorry

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse