import os
import pyboolector
from pyboolector import Boolector, BoolectorException

if __name__ == "__main__":

    b = Boolector()
    b.Set_opt(pyboolector.BTOR_OPT_INCREMENTAL, 1)
    b.Set_opt(pyboolector.BTOR_OPT_MODEL_GEN, 1)
    bvsort = b.BitVecSort(1)

    #
    # Construct a random formula
    #
    x = b.Var(bvsort, "x")
    y = b.Var(bvsort, "y")
    z = b.Var(bvsort, "z")
    x_neq_y = x != y
    z_neq_y = z != y
    all_terms = []
    all_terms.append(x_neq_y)
    all_terms.append(z_neq_y)
    all_terms.append(x == 0x1)
    all_terms.append(y == 0x1)
    all_terms.append(z == 0x1)

    #
    # Assume everything
    #
    for term in all_terms:
        b.Assume(term)

    #
    # It has conflicts, so we expect UNSAT
    #
    assert b.Sat() == b.UNSAT

    #
    # Manually find out what assumptions failed
    #
    for term in all_terms:
        print(b.Failed(term))
        term.Dump("smt2")
        print("")

    #
    # Find the failed assumptions via the API
    #
    for term in b.Failed_assumptions():
        term.Dump("smt2")
        assert b.Failed(term)
        print("")

# EOF
