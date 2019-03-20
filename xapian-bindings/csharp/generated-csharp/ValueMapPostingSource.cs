/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.5
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace Xapian {

using System;
using System.Runtime.InteropServices;

public class ValueMapPostingSource : ValuePostingSource {
  private HandleRef swigCPtr;

  internal ValueMapPostingSource(IntPtr cPtr, bool cMemoryOwn) : base(XapianPINVOKE.ValueMapPostingSource_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new HandleRef(this, cPtr);
  }

  internal static HandleRef getCPtr(ValueMapPostingSource obj) {
    return (obj == null) ? new HandleRef(null, IntPtr.Zero) : obj.swigCPtr;
  }

  ~ValueMapPostingSource() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          XapianPINVOKE.delete_ValueMapPostingSource(swigCPtr);
        }
        swigCPtr = new HandleRef(null, IntPtr.Zero);
      }
      GC.SuppressFinalize(this);
      base.Dispose();
    }
  }

  public ValueMapPostingSource(uint slot_) : this(XapianPINVOKE.new_ValueMapPostingSource(slot_), true) {
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
  }

  public void AddMapping(string key, double wt) {
    XapianPINVOKE.ValueMapPostingSource_AddMapping(swigCPtr, key, wt);
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
  }

  public void ClearMappings() {
    XapianPINVOKE.ValueMapPostingSource_ClearMappings(swigCPtr);
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
  }

  public void SetDefaultWeight(double wt) {
    XapianPINVOKE.ValueMapPostingSource_SetDefaultWeight(swigCPtr, wt);
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
  }

  public override double GetWeight() {
    double ret = XapianPINVOKE.ValueMapPostingSource_GetWeight(swigCPtr);
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public override string Name() {
    string ret = XapianPINVOKE.ValueMapPostingSource_Name(swigCPtr);
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public override void Init(Database db_) {
    XapianPINVOKE.ValueMapPostingSource_Init(swigCPtr, Database.getCPtr(db_));
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
  }

  public override string GetDescription() {
    string ret = XapianPINVOKE.ValueMapPostingSource_GetDescription(swigCPtr);
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

}

}