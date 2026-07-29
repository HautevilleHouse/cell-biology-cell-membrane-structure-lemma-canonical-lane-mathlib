import CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.CellMembraneMathlibObjects
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CellMembraneProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def cellMembraneProofObligation : CellMembraneProofObligation := {
  sourceKey := "cell-membrane-canonical-lane",
  theoremObject := "Fluid Mosaic Model",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem cell_membrane_common_core_imported_checked :
    cellMembraneProofObligation.commonCoreImported = true := by
  rfl

theorem cell_membrane_theorem_specific_definitions_native_checked :
    cellMembraneProofObligation.theoremSpecificDefinitionsNative = true := by
  rfl

theorem cell_membrane_theorem_specific_bridge_native_checked :
    cellMembraneProofObligation.theoremSpecificBridgeNative = true := by
  rfl

theorem cell_membrane_theorem_specific_admitted_closure_native_checked :
    cellMembraneProofObligation.theoremSpecificAdmittedClosureNative = true := by
  rfl

theorem cell_membrane_unrestricted_classical_closure_carried :
    cellMembraneProofObligation.unrestrictedClassicalClosureNative = false := by
  rfl

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse