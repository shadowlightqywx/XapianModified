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

public class MatchDecider : IDisposable {
  private HandleRef swigCPtr;
  protected bool swigCMemOwn;

  internal MatchDecider(IntPtr cPtr, bool cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = new HandleRef(this, cPtr);
  }

  internal static HandleRef getCPtr(MatchDecider obj) {
    return (obj == null) ? new HandleRef(null, IntPtr.Zero) : obj.swigCPtr;
  }

  ~MatchDecider() {
    Dispose();
  }

  public virtual void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          XapianPINVOKE.delete_MatchDecider(swigCPtr);
        }
        swigCPtr = new HandleRef(null, IntPtr.Zero);
      }
      GC.SuppressFinalize(this);
    }
  }

  public virtual bool Apply(Document doc) {
    bool ret = XapianPINVOKE.MatchDecider_Apply(swigCPtr, Document.getCPtr(doc));
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public MatchDecider() : this(XapianPINVOKE.new_MatchDecider(), true) {
    if (XapianPINVOKE.SWIGPendingException.Pending) throw XapianPINVOKE.SWIGPendingException.Retrieve();
    SwigDirectorConnect();
  }

  private void SwigDirectorConnect() {
    if (SwigDerivedClassHasMethod("Apply", swigMethodTypes0))
      swigDelegate0 = new SwigDelegateMatchDecider_0(SwigDirectorApply);
    XapianPINVOKE.MatchDecider_director_connect(swigCPtr, swigDelegate0);
  }

  private bool SwigDerivedClassHasMethod(string methodName, Type[] methodTypes) {
    System.Reflection.MethodInfo methodInfo = this.GetType().GetMethod(methodName, System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance, null, methodTypes, null);
    bool hasDerivedMethod = methodInfo.DeclaringType.IsSubclassOf(typeof(MatchDecider));
    return hasDerivedMethod;
  }

  private bool SwigDirectorApply(IntPtr doc) {
    return Apply(new Document(doc, false));
  }

  public delegate bool SwigDelegateMatchDecider_0(IntPtr doc);

  private SwigDelegateMatchDecider_0 swigDelegate0;

  private static Type[] swigMethodTypes0 = new Type[] { typeof(Document) };
}

}
