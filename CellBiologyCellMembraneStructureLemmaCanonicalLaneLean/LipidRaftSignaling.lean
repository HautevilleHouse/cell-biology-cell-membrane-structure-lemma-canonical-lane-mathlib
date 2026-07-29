import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure LipidRaftSignalingPackage where
  lipidRaftMicrodomain : Prop
  cholesterolSphingolipidEnrichment : Prop
  signalingProteinRecruitment : Prop
  signalTransductionComplex : Prop
  raftFluidityModulation : Prop
  endocytosisRaftMediated : Prop

structure LipidRaftSignalingEvidence (S : LipidRaftSignalingPackage) where
  lipidRaftMicrodomainClosed : S.lipidRaftMicrodomain
  cholesterolSphingolipidEnrichmentClosed : S.cholesterolSphingolipidEnrichment
  signalingProteinRecruitmentClosed : S.signalingProteinRecruitment
  signalTransductionComplexClosed : S.signalTransductionComplex
  raftFluidityModulationClosed : S.raftFluidityModulation
  endocytosisRaftMediatedClosed : S.endocytosisRaftMediated

def LipidRaftSignalingClosed (S : LipidRaftSignalingPackage) : Prop :=
  S.lipidRaftMicrodomain ∧ S.cholesterolSphingolipidEnrichment ∧ S.signalingProteinRecruitment ∧ S.signalTransductionComplex ∧ S.raftFluidityModulation ∧ S.endocytosisRaftMediated

theorem lipid_raft_signaling_closed_from_evidence
    (S : LipidRaftSignalingPackage) (E : LipidRaftSignalingEvidence S) :
    LipidRaftSignalingClosed S := by
  exact And.intro E.lipidRaftMicrodomainClosed
    (And.intro E.cholesterolSphingolipidEnrichmentClosed
      (And.intro E.signalingProteinRecruitmentClosed
        (And.intro E.signalTransductionComplexClosed
          (And.intro E.raftFluidityModulationClosed
            E.endocytosisRaftMediatedClosed))))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse