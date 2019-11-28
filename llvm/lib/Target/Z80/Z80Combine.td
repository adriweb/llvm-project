//=- Z80.td - Define Z80 Combine Rules -----------------------*- tablegen -*-=//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
//
//===----------------------------------------------------------------------===//

include "llvm/Target/GlobalISel/Combine.td"

def Z80PreLegalizerCombinerHelper
    : GICombinerHelper<"Z80GenPreLegalizerCombinerHelper", [
      trivial_combines, elide_br_by_inverting_cond, ptr_add_immed_chain,
      ptr_add_global_immed, ptr_add_const_immed, shl_to_add, or_to_add,
      combine_identity, split_conditions, lower_is_power_of_two
    ]> {
  let DisableRuleOption = "z80prelegalizercombiner-disable-rule";
}
