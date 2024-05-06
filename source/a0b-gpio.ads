--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

package A0B.GPIO
  with Preelaborate
is

   type Input_Line is limited interface;

   not overriding function Get (Self : Input_Line) return Boolean is abstract;

   type Output_Line is limited interface;

   not overriding procedure Set (Self : Output_Line; To : Boolean) is abstract;

end A0B.GPIO;
