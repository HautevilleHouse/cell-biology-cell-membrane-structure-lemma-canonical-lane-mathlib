import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure CellAdhesionJunctionsPackage (L : LipidBilayerPackage) (T : MembraneProteinTransportPackage L) where
  tightJunctions : Prop
  adherensJunctions : Prop
  desmosomes : Prop
  gapJunctions : Prop
  hemidesmosomes : Prop
  cellCellAdhesion : Prop

structure CellAdhesionJunctionsEvidence {L : LipidBilayerPackage}
    {T : MembraneProteinTransportPackage L}
    (J : CellAdhesionJunctionsPackage L T) where
  tightJunctionsClosed : J.tightJunctions
  adherensJunctionsClosed : J.adherensJunctions
  desmosomesClosed : J.desmosomes
  gapJunctionsClosed : J.gapJunctions
  hemidesmosomesClosed : J.hemidesmosomes
  cellCellAdhesionClosed : J.cellCellAdhesion

def CellAdhesionJunctionsClosed {L : LipidBilayerPackage}
    {T : MembraneProteinTransportPackage L}
    (J : CellAdhesionJunctionsPackage L T) : Prop :=
  J.tightJunctions ∧ J.adherensJunctions ∧ J.desmosomes ∧
  J.gapJunctions ∧ J.hemidesmosomes ∧ J.cellCellAdhesion

theorem cell_adhesion_junctions_closed_from_evidence
    {L : LipidBilayerPackage} {T : MembraneProteinTransportPackage L}
    (J : CellAdhesionJunctionsPackage L T)
    (E : CellAdhesionJunctionsEvidence J) : CellAdhesionJunctionsClosed J := by
  exact And.intro E.tightJunctionsClosed
    (And.intro E.adherensJunctionsClosed
      (And.intro E.desmosomesClosed
        (And.intro E.gapJunctionsClosed
          (And.intro E.hemidesmosomesClosed E.cellCellAdhesionClosed))))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse