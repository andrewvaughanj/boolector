#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../../boolector.h"
#include "../../btorutil.h"

static int
num_chars (int x)
{
  int result = 0;
  if (x == 0) return 1;
  while (x > 0)
  {
    result++;
    x /= 10;
  }
  return result;
}

int
main (int argc, char **argv)
{
  int num_bits               = 0;
  int num_bits_index         = 0;
  int num_elements           = 0;
  int i                      = 0;
  int top                    = 0;
  int bottom                 = 0;
  char *buffer               = NULL;
  BtorExpMgr *emgr           = NULL;
  BtorExp **indices          = NULL;
  BtorExp **initial_elements = NULL;
  BtorExp **sorted_elements  = NULL;
  BtorExp *array             = NULL;
  BtorExp *eq                = NULL;
  BtorExp *ugt               = NULL;
  BtorExp *ult               = NULL;
  BtorExp *ulte              = NULL;
  BtorExp *temp              = NULL;
  BtorExp *read1             = NULL;
  BtorExp *read2             = NULL;
  BtorExp *cond1             = NULL;
  BtorExp *cond2             = NULL;
  BtorExp *sorted            = NULL;
  BtorExp *formula           = NULL;
  BtorExp *var               = NULL;
  if (argc != 3)
  {
    printf ("Usage: ./gencocktailsortexample <num-bits> <num-elements>\n");
    return 1;
  }
  num_bits = atoi (argv[1]);
  if (num_bits <= 0)
  {
    printf ("Number of bits must be greater than zero\n");
    return 1;
  }
  num_elements = atoi (argv[2]);
  if (num_elements <= 1)
  {
    printf ("Number of elements must be greater than one\n");
    return 1;
  }
  if (!btor_is_power_of_2_util (num_elements))
  {
    printf ("Number of elements must be a power of two\n");
    return 1;
  }
  num_bits_index   = btor_log_2_util (num_elements);
  emgr             = btor_new_exp_mgr (2, 0, 0, stdout);
  indices          = (BtorExp **) malloc (sizeof (BtorExp *) * num_elements);
  initial_elements = (BtorExp **) malloc (sizeof (BtorExp *) * num_elements);
  sorted_elements  = (BtorExp **) malloc (sizeof (BtorExp *) * num_elements);
  for (i = 0; i < num_elements; i++)
    indices[i] = btor_int_to_exp (emgr, i, num_bits_index);
  array = btor_array_exp (emgr, num_bits, num_bits_index);
  /* read initial elements */
  for (i = 0; i < num_elements; i++)
    initial_elements[i] = btor_read_exp (emgr, array, indices[i]);
  /* cocktail sort algorithm */
  top = num_elements - 1;
  while (bottom < top)
  {
    for (i = bottom; i < top; i++)
    {
      read1 = btor_read_exp (emgr, array, indices[i]);
      read2 = btor_read_exp (emgr, array, indices[i + 1]);
      ugt   = btor_ugt_exp (emgr, read1, read2);
      /* swap ? */
      cond1 = btor_cond_exp (emgr, ugt, read2, read1);
      cond2 = btor_cond_exp (emgr, ugt, read1, read2);
      temp  = btor_write_exp (emgr, array, indices[i], cond1);
      btor_release_exp (emgr, array);
      array = temp;
      temp  = btor_write_exp (emgr, array, indices[i + 1], cond2);
      btor_release_exp (emgr, array);
      array = temp;
      btor_release_exp (emgr, read1);
      btor_release_exp (emgr, read2);
      btor_release_exp (emgr, ugt);
      btor_release_exp (emgr, cond1);
      btor_release_exp (emgr, cond2);
    }
    top--;
    for (i = top; i > bottom; i--)
    {
      read1 = btor_read_exp (emgr, array, indices[i]);
      read2 = btor_read_exp (emgr, array, indices[i - 1]);
      ult   = btor_ult_exp (emgr, read1, read2);
      /* swap ? */
      cond1 = btor_cond_exp (emgr, ult, read2, read1);
      cond2 = btor_cond_exp (emgr, ult, read1, read2);
      temp  = btor_write_exp (emgr, array, indices[i], cond1);
      btor_release_exp (emgr, array);
      array = temp;
      temp  = btor_write_exp (emgr, array, indices[i - 1], cond2);
      btor_release_exp (emgr, array);
      array = temp;
      btor_release_exp (emgr, read1);
      btor_release_exp (emgr, read2);
      btor_release_exp (emgr, ult);
      btor_release_exp (emgr, cond1);
      btor_release_exp (emgr, cond2);
    }
    bottom++;
  }
  /* read sorted elements */
  for (i = 0; i < num_elements; i++)
    sorted_elements[i] = btor_read_exp (emgr, array, indices[i]);
  /* show that array is sorted */
  sorted = btor_const_exp (emgr, "1");
  for (i = 0; i < num_elements - 1; i++)
  {
    read1 = btor_read_exp (emgr, array, indices[i]);
    read2 = btor_read_exp (emgr, array, indices[i + 1]);
    ulte  = btor_ulte_exp (emgr, read1, read2);
    temp  = btor_and_exp (emgr, sorted, ulte);
    btor_release_exp (emgr, sorted);
    sorted = temp;
    btor_release_exp (emgr, read1);
    btor_release_exp (emgr, read2);
    btor_release_exp (emgr, ulte);
  }
  formula = btor_copy_exp (emgr, sorted);
  /* we set variables equal to the initial read values */
  for (i = 0; i < num_elements; i++)
  {
    buffer = (char *) malloc (sizeof (char)
                              * (strlen ("initial_v") + num_chars (i) + 1));
    sprintf (buffer, "inital_v%d", i);
    var  = btor_var_exp (emgr, num_bits, buffer);
    eq   = btor_eq_exp (emgr, var, initial_elements[i]);
    temp = btor_and_exp (emgr, formula, eq);
    btor_release_exp (emgr, formula);
    formula = temp;
    btor_release_exp (emgr, var);
    btor_release_exp (emgr, eq);
    free (buffer);
  }
  /* we set variables equal to the sorted read read values */
  for (i = 0; i < num_elements; i++)
  {
    buffer = (char *) malloc (sizeof (char)
                              * (strlen ("sorted_v") + num_chars (i) + 1));
    sprintf (buffer, "sorted_v%d", i);
    var  = btor_var_exp (emgr, num_bits, buffer);
    eq   = btor_eq_exp (emgr, var, sorted_elements[i]);
    temp = btor_and_exp (emgr, formula, eq);
    btor_release_exp (emgr, formula);
    formula = temp;
    btor_release_exp (emgr, var);
    btor_release_exp (emgr, eq);
    free (buffer);
  }
  btor_dump_exp (emgr, stdout, formula);
  /* clean up */
  for (i = 0; i < num_elements; i++)
  {
    btor_release_exp (emgr, indices[i]);
    btor_release_exp (emgr, initial_elements[i]);
    btor_release_exp (emgr, sorted_elements[i]);
  }
  btor_release_exp (emgr, formula);
  btor_release_exp (emgr, sorted);
  btor_release_exp (emgr, array);
  btor_delete_exp_mgr (emgr);
  free (indices);
  free (initial_elements);
  free (sorted_elements);
  return 0;
}
