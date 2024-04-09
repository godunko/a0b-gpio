--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

package A0B.GPIO
  with Preelaborate
is

   type Input_Pin is limited interface;

   not overriding function Get (Self : Input_Pin) return Boolean is abstract;

   type Output_Pin is limited interface;

   not overriding procedure Set (Self : Output_Pin; To : Boolean) is abstract;

end A0B.GPIO;
