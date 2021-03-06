/* @configure_input@
 * AssemblyInfo.cs.in - set attributes for the XapianSharp.dll assembly.
 *
 * Copyright (c) 2006,2011,2012 Olly Betts
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301
 * USA
 */

using System.Reflection;

[assembly: AssemblyVersion("1.2.23")]

// We have the private key, so don't need to delay signing.
[assembly: AssemblyDelaySign(false)]

// Informational attributes.
[assembly: AssemblyCompany("The Xapian Project")]
[assembly: AssemblyCopyright("Licensed under the GNU GPL version 2 or later")]
[assembly: AssemblyDescription("C# bindings for the Xapian Search Library")]
[assembly: AssemblyTitle("Xapian C# bindings")]
