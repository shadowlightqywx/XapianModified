/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.5
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.xapian;

public class Xapian implements XapianConstants {
  public static int getBAD_VALUENO() {
    return XapianJNI.BAD_VALUENO_get();
  }

  public static String sortableSerialise(double value) {
    return XapianJNI.sortableSerialise(value);
  }

  public static double sortableUnserialise(String value) {
    return XapianJNI.sortableUnserialise(value);
  }

}
